import 'package:dartz/dartz.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/providers/register/register_state.dart';
import 'package:firebase_sample/utils/common_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final registerProvider = StateNotifierProvider.autoDispose<RegisterNotifier, RegisterState>((ref) {
  return RegisterNotifier(ref: ref);
});

class RegisterNotifier extends StateNotifier<RegisterState> {
  final Ref ref;

  RegisterNotifier({required this.ref}) : super(RegisterState.initial());

  mapEvents(RegisterEvent event) {
    event.map(
        nameChanged: (value) => state = state.copyWith(name: value.name!),
        emailChanged: (value) => state = state.copyWith(email: value.email!),
        passwordChanged: (value) => state = state.copyWith(password: value.password!),
        confirmPasswordChanged: (value) => state = state.copyWith(confirmPassword: value.confirmPassword!),
        register: (value) => register(),
    );
  }

  register() async {
    Either<String, User?>? failureOrSuccess;

    if (state.name.trim().isEmpty) {
      failureOrSuccess = left('Name is required');
    } else if (state.email.trim().isEmpty) {
      failureOrSuccess = left('Email is required');
    } else if (!EmailValidator.validate(state.email.trim())) {
      failureOrSuccess = left('Email is not valid');
    } else if (state.password.trim().isEmpty) {
      failureOrSuccess = left('Password is required');
    } else if (state.confirmPassword.trim().isEmpty) {
      failureOrSuccess = left('Confirm password is required');
    } else if (state.password.length <= 6) {
      failureOrSuccess = left('Password should have minimum 7 length');
    } else if (state.confirmPassword != state.password) {
      failureOrSuccess = left('Password doesn\'t match');
    }

    if (failureOrSuccess != null) {
      state = state.copyWith(failureOrSuccess: optionOf(failureOrSuccess));
      return;
    }

    try {
      CommonUtils.showLoader();
      var auth = FirebaseAuth.instance;
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: state.email,
        password: state.confirmPassword,
      );

      var user = userCredential.user;
      if (user != null) {
        await user.updateDisplayName(state.name);
        await user.reload();
        user.sendEmailVerification();
        CommonUtils.hideLoader();

        var refreshedUser = auth.currentUser;
        state = state.copyWith(failureOrSuccess: optionOf(right(refreshedUser)));
        return;
      }

      CommonUtils.hideLoader();
      state = state.copyWith(failureOrSuccess: optionOf(right(null)));
    } on FirebaseAuthException catch (e) {
      CommonUtils.hideLoader();

      if (e.code == 'weak-password') {
        state = state.copyWith(failureOrSuccess: optionOf(left('The password provided is too weak.')));
      } else if (e.code == 'email-already-in-use') {
        state = state.copyWith(failureOrSuccess: optionOf(left('The account already exists for that email.')));
      }
    }
  }
}
