// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get passwordVisibility => throw _privateConstructorUsedError;
  Option<Either<String, User?>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      bool passwordVisibility,
      Option<Either<String, User?>> failureOrSuccess});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordVisibility = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordVisibility: passwordVisibility == freezed
          ? _value.passwordVisibility
          : passwordVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, User?>>,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      bool passwordVisibility,
      Option<Either<String, User?>> failureOrSuccess});
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationState));

  @override
  _$_AuthenticationState get _value => super._value as _$_AuthenticationState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? passwordVisibility = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_$_AuthenticationState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordVisibility: passwordVisibility == freezed
          ? _value.passwordVisibility
          : passwordVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, User?>>,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {required this.email,
      required this.password,
      required this.passwordVisibility,
      required this.failureOrSuccess});

  @override
  final String email;
  @override
  final String password;
  @override
  final bool passwordVisibility;
  @override
  final Option<Either<String, User?>> failureOrSuccess;

  @override
  String toString() {
    return 'AuthenticationState(email: $email, password: $password, passwordVisibility: $passwordVisibility, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.passwordVisibility, passwordVisibility) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(passwordVisibility),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      __$$_AuthenticationStateCopyWithImpl<_$_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
          {required final String email,
          required final String password,
          required final bool passwordVisibility,
          required final Option<Either<String, User?>> failureOrSuccess}) =
      _$_AuthenticationState;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get passwordVisibility;
  @override
  Option<Either<String, User?>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(bool visibility) visibilityChanged,
    required TResult Function() login,
    required TResult Function() googleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(VisibilityChanged value) visibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(GoogleLogin value) googleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String? email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$EmailChanged(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged({required this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthenticationEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(bool visibility) visibilityChanged,
    required TResult Function() login,
    required TResult Function() googleLogin,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(VisibilityChanged value) visibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(GoogleLogin value) googleLogin,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthenticationEvent {
  const factory EmailChanged({required final String? email}) = _$EmailChanged;

  String? get email;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String? password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$PasswordChanged));

  @override
  _$PasswordChanged get _value => super._value as _$PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$PasswordChanged(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({required this.password});

  @override
  final String? password;

  @override
  String toString() {
    return 'AuthenticationEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(bool visibility) visibilityChanged,
    required TResult Function() login,
    required TResult Function() googleLogin,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(VisibilityChanged value) visibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(GoogleLogin value) googleLogin,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthenticationEvent {
  const factory PasswordChanged({required final String? password}) =
      _$PasswordChanged;

  String? get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisibilityChangedCopyWith<$Res> {
  factory _$$VisibilityChangedCopyWith(
          _$VisibilityChanged value, $Res Function(_$VisibilityChanged) then) =
      __$$VisibilityChangedCopyWithImpl<$Res>;
  $Res call({bool visibility});
}

/// @nodoc
class __$$VisibilityChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$VisibilityChangedCopyWith<$Res> {
  __$$VisibilityChangedCopyWithImpl(
      _$VisibilityChanged _value, $Res Function(_$VisibilityChanged) _then)
      : super(_value, (v) => _then(v as _$VisibilityChanged));

  @override
  _$VisibilityChanged get _value => super._value as _$VisibilityChanged;

  @override
  $Res call({
    Object? visibility = freezed,
  }) {
    return _then(_$VisibilityChanged(
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VisibilityChanged implements VisibilityChanged {
  const _$VisibilityChanged({required this.visibility});

  @override
  final bool visibility;

  @override
  String toString() {
    return 'AuthenticationEvent.visibilityChanged(visibility: $visibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityChanged &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(visibility));

  @JsonKey(ignore: true)
  @override
  _$$VisibilityChangedCopyWith<_$VisibilityChanged> get copyWith =>
      __$$VisibilityChangedCopyWithImpl<_$VisibilityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(bool visibility) visibilityChanged,
    required TResult Function() login,
    required TResult Function() googleLogin,
  }) {
    return visibilityChanged(visibility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
  }) {
    return visibilityChanged?.call(visibility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
    required TResult orElse(),
  }) {
    if (visibilityChanged != null) {
      return visibilityChanged(visibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(VisibilityChanged value) visibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(GoogleLogin value) googleLogin,
  }) {
    return visibilityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
  }) {
    return visibilityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
    required TResult orElse(),
  }) {
    if (visibilityChanged != null) {
      return visibilityChanged(this);
    }
    return orElse();
  }
}

abstract class VisibilityChanged implements AuthenticationEvent {
  const factory VisibilityChanged({required final bool visibility}) =
      _$VisibilityChanged;

  bool get visibility;
  @JsonKey(ignore: true)
  _$$VisibilityChangedCopyWith<_$VisibilityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginCopyWith<$Res> {
  factory _$$LoginCopyWith(_$Login value, $Res Function(_$Login) then) =
      __$$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$LoginCopyWith<$Res> {
  __$$LoginCopyWithImpl(_$Login _value, $Res Function(_$Login) _then)
      : super(_value, (v) => _then(v as _$Login));

  @override
  _$Login get _value => super._value as _$Login;
}

/// @nodoc

class _$Login implements Login {
  const _$Login();

  @override
  String toString() {
    return 'AuthenticationEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(bool visibility) visibilityChanged,
    required TResult Function() login,
    required TResult Function() googleLogin,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(VisibilityChanged value) visibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(GoogleLogin value) googleLogin,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements AuthenticationEvent {
  const factory Login() = _$Login;
}

/// @nodoc
abstract class _$$GoogleLoginCopyWith<$Res> {
  factory _$$GoogleLoginCopyWith(
          _$GoogleLogin value, $Res Function(_$GoogleLogin) then) =
      __$$GoogleLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleLoginCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$GoogleLoginCopyWith<$Res> {
  __$$GoogleLoginCopyWithImpl(
      _$GoogleLogin _value, $Res Function(_$GoogleLogin) _then)
      : super(_value, (v) => _then(v as _$GoogleLogin));

  @override
  _$GoogleLogin get _value => super._value as _$GoogleLogin;
}

/// @nodoc

class _$GoogleLogin implements GoogleLogin {
  const _$GoogleLogin();

  @override
  String toString() {
    return 'AuthenticationEvent.googleLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) emailChanged,
    required TResult Function(String? password) passwordChanged,
    required TResult Function(bool visibility) visibilityChanged,
    required TResult Function() login,
    required TResult Function() googleLogin,
  }) {
    return googleLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
  }) {
    return googleLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? emailChanged,
    TResult Function(String? password)? passwordChanged,
    TResult Function(bool visibility)? visibilityChanged,
    TResult Function()? login,
    TResult Function()? googleLogin,
    required TResult orElse(),
  }) {
    if (googleLogin != null) {
      return googleLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(VisibilityChanged value) visibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(GoogleLogin value) googleLogin,
  }) {
    return googleLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
  }) {
    return googleLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(VisibilityChanged value)? visibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(GoogleLogin value)? googleLogin,
    required TResult orElse(),
  }) {
    if (googleLogin != null) {
      return googleLogin(this);
    }
    return orElse();
  }
}

abstract class GoogleLogin implements AuthenticationEvent {
  const factory GoogleLogin() = _$GoogleLogin;
}
