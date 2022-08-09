import 'package:firebase_sample/providers/authentication/authentication_state.dart';
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
        login: (value) => login(),
        register: (value) => register(),
        googleLogin: (value) => googleLogin(),
    );
  }

  login() {

  }

  register() {

  }

  googleLogin() {

  }
}
