// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneState {
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isCodeSent => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  Option<Either<String, User?>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneStateCopyWith<PhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneStateCopyWith<$Res> {
  factory $PhoneStateCopyWith(
          PhoneState value, $Res Function(PhoneState) then) =
      _$PhoneStateCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      bool isCodeSent,
      String smsCode,
      Option<Either<String, User?>> failureOrSuccess});
}

/// @nodoc
class _$PhoneStateCopyWithImpl<$Res> implements $PhoneStateCopyWith<$Res> {
  _$PhoneStateCopyWithImpl(this._value, this._then);

  final PhoneState _value;
  // ignore: unused_field
  final $Res Function(PhoneState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? isCodeSent = freezed,
    Object? smsCode = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isCodeSent: isCodeSent == freezed
          ? _value.isCodeSent
          : isCodeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, User?>>,
    ));
  }
}

/// @nodoc
abstract class _$$_PhoneStateCopyWith<$Res>
    implements $PhoneStateCopyWith<$Res> {
  factory _$$_PhoneStateCopyWith(
          _$_PhoneState value, $Res Function(_$_PhoneState) then) =
      __$$_PhoneStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phoneNumber,
      bool isCodeSent,
      String smsCode,
      Option<Either<String, User?>> failureOrSuccess});
}

/// @nodoc
class __$$_PhoneStateCopyWithImpl<$Res> extends _$PhoneStateCopyWithImpl<$Res>
    implements _$$_PhoneStateCopyWith<$Res> {
  __$$_PhoneStateCopyWithImpl(
      _$_PhoneState _value, $Res Function(_$_PhoneState) _then)
      : super(_value, (v) => _then(v as _$_PhoneState));

  @override
  _$_PhoneState get _value => super._value as _$_PhoneState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? isCodeSent = freezed,
    Object? smsCode = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_$_PhoneState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isCodeSent: isCodeSent == freezed
          ? _value.isCodeSent
          : isCodeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, User?>>,
    ));
  }
}

/// @nodoc

class _$_PhoneState implements _PhoneState {
  const _$_PhoneState(
      {required this.phoneNumber,
      required this.isCodeSent,
      required this.smsCode,
      required this.failureOrSuccess});

  @override
  final String phoneNumber;
  @override
  final bool isCodeSent;
  @override
  final String smsCode;
  @override
  final Option<Either<String, User?>> failureOrSuccess;

  @override
  String toString() {
    return 'PhoneState(phoneNumber: $phoneNumber, isCodeSent: $isCodeSent, smsCode: $smsCode, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.isCodeSent, isCodeSent) &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(isCodeSent),
      const DeepCollectionEquality().hash(smsCode),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneStateCopyWith<_$_PhoneState> get copyWith =>
      __$$_PhoneStateCopyWithImpl<_$_PhoneState>(this, _$identity);
}

abstract class _PhoneState implements PhoneState {
  const factory _PhoneState(
          {required final String phoneNumber,
          required final bool isCodeSent,
          required final String smsCode,
          required final Option<Either<String, User?>> failureOrSuccess}) =
      _$_PhoneState;

  @override
  String get phoneNumber;
  @override
  bool get isCodeSent;
  @override
  String get smsCode;
  @override
  Option<Either<String, User?>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneStateCopyWith<_$_PhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhoneEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) numberChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function() codeSent,
    required TResult Function() authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) numberChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(Authenticate value) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneEventCopyWith<$Res> {
  factory $PhoneEventCopyWith(
          PhoneEvent value, $Res Function(PhoneEvent) then) =
      _$PhoneEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneEventCopyWithImpl<$Res> implements $PhoneEventCopyWith<$Res> {
  _$PhoneEventCopyWithImpl(this._value, this._then);

  final PhoneEvent _value;
  // ignore: unused_field
  final $Res Function(PhoneEvent) _then;
}

/// @nodoc
abstract class _$$PhoneNumberChangedCopyWith<$Res> {
  factory _$$PhoneNumberChangedCopyWith(_$PhoneNumberChanged value,
          $Res Function(_$PhoneNumberChanged) then) =
      __$$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$PhoneEventCopyWithImpl<$Res>
    implements _$$PhoneNumberChangedCopyWith<$Res> {
  __$$PhoneNumberChangedCopyWithImpl(
      _$PhoneNumberChanged _value, $Res Function(_$PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _$PhoneNumberChanged));

  @override
  _$PhoneNumberChanged get _value => super._value as _$PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$PhoneNumberChanged(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneEvent.numberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$PhoneNumberChangedCopyWith<_$PhoneNumberChanged> get copyWith =>
      __$$PhoneNumberChangedCopyWithImpl<_$PhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) numberChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function() codeSent,
    required TResult Function() authenticate,
  }) {
    return numberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
  }) {
    return numberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (numberChanged != null) {
      return numberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) numberChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return numberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return numberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (numberChanged != null) {
      return numberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements PhoneEvent {
  const factory PhoneNumberChanged({required final String phoneNumber}) =
      _$PhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedCopyWith<_$PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SMSCodeChangedCopyWith<$Res> {
  factory _$$SMSCodeChangedCopyWith(
          _$SMSCodeChanged value, $Res Function(_$SMSCodeChanged) then) =
      __$$SMSCodeChangedCopyWithImpl<$Res>;
  $Res call({String smsCode});
}

/// @nodoc
class __$$SMSCodeChangedCopyWithImpl<$Res>
    extends _$PhoneEventCopyWithImpl<$Res>
    implements _$$SMSCodeChangedCopyWith<$Res> {
  __$$SMSCodeChangedCopyWithImpl(
      _$SMSCodeChanged _value, $Res Function(_$SMSCodeChanged) _then)
      : super(_value, (v) => _then(v as _$SMSCodeChanged));

  @override
  _$SMSCodeChanged get _value => super._value as _$SMSCodeChanged;

  @override
  $Res call({
    Object? smsCode = freezed,
  }) {
    return _then(_$SMSCodeChanged(
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SMSCodeChanged implements SMSCodeChanged {
  const _$SMSCodeChanged({required this.smsCode});

  @override
  final String smsCode;

  @override
  String toString() {
    return 'PhoneEvent.smsCodeChanged(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SMSCodeChanged &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(smsCode));

  @JsonKey(ignore: true)
  @override
  _$$SMSCodeChangedCopyWith<_$SMSCodeChanged> get copyWith =>
      __$$SMSCodeChangedCopyWithImpl<_$SMSCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) numberChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function() codeSent,
    required TResult Function() authenticate,
  }) {
    return smsCodeChanged(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
  }) {
    return smsCodeChanged?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) numberChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return smsCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return smsCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(this);
    }
    return orElse();
  }
}

abstract class SMSCodeChanged implements PhoneEvent {
  const factory SMSCodeChanged({required final String smsCode}) =
      _$SMSCodeChanged;

  String get smsCode;
  @JsonKey(ignore: true)
  _$$SMSCodeChangedCopyWith<_$SMSCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeSentCopyWith<$Res> {
  factory _$$CodeSentCopyWith(
          _$CodeSent value, $Res Function(_$CodeSent) then) =
      __$$CodeSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CodeSentCopyWithImpl<$Res> extends _$PhoneEventCopyWithImpl<$Res>
    implements _$$CodeSentCopyWith<$Res> {
  __$$CodeSentCopyWithImpl(_$CodeSent _value, $Res Function(_$CodeSent) _then)
      : super(_value, (v) => _then(v as _$CodeSent));

  @override
  _$CodeSent get _value => super._value as _$CodeSent;
}

/// @nodoc

class _$CodeSent implements CodeSent {
  const _$CodeSent();

  @override
  String toString() {
    return 'PhoneEvent.codeSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CodeSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) numberChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function() codeSent,
    required TResult Function() authenticate,
  }) {
    return codeSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
  }) {
    return codeSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) numberChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class CodeSent implements PhoneEvent {
  const factory CodeSent() = _$CodeSent;
}

/// @nodoc
abstract class _$$AuthenticateCopyWith<$Res> {
  factory _$$AuthenticateCopyWith(
          _$Authenticate value, $Res Function(_$Authenticate) then) =
      __$$AuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateCopyWithImpl<$Res> extends _$PhoneEventCopyWithImpl<$Res>
    implements _$$AuthenticateCopyWith<$Res> {
  __$$AuthenticateCopyWithImpl(
      _$Authenticate _value, $Res Function(_$Authenticate) _then)
      : super(_value, (v) => _then(v as _$Authenticate));

  @override
  _$Authenticate get _value => super._value as _$Authenticate;
}

/// @nodoc

class _$Authenticate implements Authenticate {
  const _$Authenticate();

  @override
  String toString() {
    return 'PhoneEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) numberChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function() codeSent,
    required TResult Function() authenticate,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? numberChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function()? codeSent,
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) numberChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(Authenticate value) authenticate,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? numberChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class Authenticate implements PhoneEvent {
  const factory Authenticate() = _$Authenticate;
}
