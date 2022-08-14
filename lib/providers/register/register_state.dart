import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
    required Option<Either<String, User?>> failureOrSuccess
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
    name: '',
    email: '',
    password: '',
    confirmPassword: '',
    failureOrSuccess: none()
  );
}

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.nameChanged({required String? name}) = NameChanged;

  const factory RegisterEvent.emailChanged({required String? email}) = EmailChanged;

  const factory RegisterEvent.passwordChanged({required String? password}) = PasswordChanged;

  const factory RegisterEvent.confirmPasswordChanged({required String? confirmPassword}) = ConfirmPasswordChanged;

  const factory RegisterEvent.register() = Register;
}
