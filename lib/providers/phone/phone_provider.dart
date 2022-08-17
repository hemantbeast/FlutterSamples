import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/providers/phone/phone_state.dart';
import 'package:firebase_sample/utils/common_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final phoneProvider = StateNotifierProvider.autoDispose<PhoneNotifier, PhoneState>((ref) {
  return PhoneNotifier(ref: ref);
});

class PhoneNotifier extends StateNotifier<PhoneState> {
  final Ref ref;
  String? _verificationId;

  PhoneNotifier({required this.ref}) : super(PhoneState.initial());

  mapEvents(PhoneEvent event) {
    event.map(
        numberChanged: (value) {
          if (state.isCodeSent) {
            state = state.copyWith(isCodeSent: false);
          }
          state = state.copyWith(phoneNumber: value.phoneNumber);
        },
        smsCodeChanged: (value) => state = state.copyWith(smsCode: value.smsCode, failureOrSuccess: none()),
        codeSent: (value) async => await codeSent(),
        authenticate: (value) async => await authenticate(),
    );
  }

  codeSent() async {
    CommonUtils.showLoader();
    var auth = FirebaseAuth.instance;

    await auth.verifyPhoneNumber(
      phoneNumber: state.phoneNumber,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (phoneAuthCredential) async {
        var userCred = await auth.signInWithCredential(phoneAuthCredential);
        CommonUtils.hideLoader();
        state = state.copyWith(failureOrSuccess: optionOf(right(userCred.user)));
      },
      verificationFailed: (error) => state = state.copyWith(failureOrSuccess: optionOf(left(error.message!))),
      codeSent: (verificationId, forceResendingToken) {
        CommonUtils.hideLoader();
        _verificationId = verificationId;
        state = state.copyWith(isCodeSent: true, failureOrSuccess: optionOf(left('Code sent!')));
      },
      codeAutoRetrievalTimeout: (verificationId) {
        CommonUtils.hideLoader();
        _verificationId = verificationId;
      },
    );
  }

  authenticate() async {
    try {
      if (_verificationId == null || _verificationId!.isEmpty || state.smsCode.length != 6) {
        return;
      }

      CommonUtils.showLoader();
      var credential = PhoneAuthProvider.credential(verificationId: _verificationId!, smsCode: state.smsCode);
      var cred = await FirebaseAuth.instance.signInWithCredential(credential);

      CommonUtils.hideLoader();
      state = state.copyWith(failureOrSuccess: optionOf(right(cred.user)));
    } on FirebaseAuthException catch (e) {
      CommonUtils.hideLoader();
      state = state.copyWith(failureOrSuccess: optionOf(left(e.message!)));
    }
  }
}
