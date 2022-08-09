import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required String email,
    required String password,
    required bool passwordVisibility,
    required Option<Either<String, bool>> failureOrSuccess,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => AuthenticationState(
    email: '',
    password: '',
    passwordVisibility: false,
    failureOrSuccess: none()
  );
}

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.emailChanged({required String? email}) = EmailChanged;

  const factory AuthenticationEvent.passwordChanged({required String? password}) = PasswordChanged;

  const factory AuthenticationEvent.visibilityChanged({required bool visibility}) = VisibilityChanged;

  const factory AuthenticationEvent.login() = Login;

  const factory AuthenticationEvent.register() = Register;

  const factory AuthenticationEvent.googleLogin() = GoogleLogin;
}
