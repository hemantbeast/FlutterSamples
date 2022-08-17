import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_state.freezed.dart';

@freezed
class PhoneState with _$PhoneState {
  const factory PhoneState({
    required String phoneNumber,
    required bool isCodeSent,
    required String smsCode,
    required Option<Either<String, User?>> failureOrSuccess
  }) = _PhoneState;

  factory PhoneState.initial() => PhoneState(phoneNumber: '', isCodeSent: false, smsCode: '', failureOrSuccess: none());
}

@freezed
class PhoneEvent with _$PhoneEvent {
  const factory PhoneEvent.numberChanged({required String phoneNumber}) = PhoneNumberChanged;

  const factory PhoneEvent.smsCodeChanged({required String smsCode}) = SMSCodeChanged;

  const factory PhoneEvent.codeSent() = CodeSent;

  const factory PhoneEvent.authenticate() = Authenticate;
}
