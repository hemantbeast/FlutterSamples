import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/providers/authentication/authentication_state.dart';
import 'package:firebase_sample/utils/common_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authenticationProvider = StateNotifierProvider.autoDispose<AuthenticationNotifier, AuthenticationState>((ref) {
  return AuthenticationNotifier(ref: ref);
});

class AuthenticationNotifier extends StateNotifier<AuthenticationState> {
  final Ref ref;

  AuthenticationNotifier({required this.ref}) : super(AuthenticationState.initial());

  Future mapEvents(AuthenticationEvent event) async {
    event.map(
        emailChanged: (value) => state = state.copyWith(email: value.email!),
        passwordChanged: (value) => state = state.copyWith(password: value.password!),
        visibilityChanged: (value) => state = state.copyWith(passwordVisibility: value.visibility),
        login: (value) async => await login(),
        register: (value) => register(),
        googleLogin: (value) => googleLogin(),
    );
  }

  login() async {
    Either<String, User?>? failureOrSuccess;

    if (state.email.trim().isEmpty) {
      failureOrSuccess = left('Email is required');
    } else if (state.password.trim().isEmpty) {
      failureOrSuccess = left('Password is required');
    }

    if (failureOrSuccess != null) {
      state = state.copyWith(failureOrSuccess: optionOf(failureOrSuccess));
      return;
    }

    try {
      CommonUtils.showLoader();
      var auth = FirebaseAuth.instance;
      var credential = await auth.signInWithEmailAndPassword(
          email: state.email,
          password: state.password
      );

      CommonUtils.hideLoader();
      if (credential.user != null) {
        state = state.copyWith(failureOrSuccess: optionOf(right(credential.user)));
        return;
      }

      state = state.copyWith(failureOrSuccess: optionOf(right(null)));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        state = state.copyWith(failureOrSuccess: optionOf(left('No user found for that email.')));
      } else if (e.code == 'wrong-password') {
        state = state.copyWith(failureOrSuccess: optionOf(left('Wrong password provided.')));
      }
    }
  }

  register() {

  }

  googleLogin() {

  }
}
