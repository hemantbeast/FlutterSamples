// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'analytics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalyticsState {
  String get event => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalyticsStateCopyWith<AnalyticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsStateCopyWith<$Res> {
  factory $AnalyticsStateCopyWith(
          AnalyticsState value, $Res Function(AnalyticsState) then) =
      _$AnalyticsStateCopyWithImpl<$Res>;
  $Res call({String event});
}

/// @nodoc
class _$AnalyticsStateCopyWithImpl<$Res>
    implements $AnalyticsStateCopyWith<$Res> {
  _$AnalyticsStateCopyWithImpl(this._value, this._then);

  final AnalyticsState _value;
  // ignore: unused_field
  final $Res Function(AnalyticsState) _then;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AnalyticsStateCopyWith<$Res>
    implements $AnalyticsStateCopyWith<$Res> {
  factory _$$_AnalyticsStateCopyWith(
          _$_AnalyticsState value, $Res Function(_$_AnalyticsState) then) =
      __$$_AnalyticsStateCopyWithImpl<$Res>;
  @override
  $Res call({String event});
}

/// @nodoc
class __$$_AnalyticsStateCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res>
    implements _$$_AnalyticsStateCopyWith<$Res> {
  __$$_AnalyticsStateCopyWithImpl(
      _$_AnalyticsState _value, $Res Function(_$_AnalyticsState) _then)
      : super(_value, (v) => _then(v as _$_AnalyticsState));

  @override
  _$_AnalyticsState get _value => super._value as _$_AnalyticsState;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$_AnalyticsState(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnalyticsState implements _AnalyticsState {
  const _$_AnalyticsState({required this.event});

  @override
  final String event;

  @override
  String toString() {
    return 'AnalyticsState(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsState &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$_AnalyticsStateCopyWith<_$_AnalyticsState> get copyWith =>
      __$$_AnalyticsStateCopyWithImpl<_$_AnalyticsState>(this, _$identity);
}

abstract class _AnalyticsState implements AnalyticsState {
  const factory _AnalyticsState({required final String event}) =
      _$_AnalyticsState;

  @override
  String get event;
  @override
  @JsonKey(ignore: true)
  _$$_AnalyticsStateCopyWith<_$_AnalyticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalyticsEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? text) textChanged,
    required TResult Function() logEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? text)? textChanged,
    TResult Function()? logEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? text)? textChanged,
    TResult Function()? logEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) textChanged,
    required TResult Function(LogEvent value) logEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextChanged value)? textChanged,
    TResult Function(LogEvent value)? logEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? textChanged,
    TResult Function(LogEvent value)? logEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsEventsCopyWith<$Res> {
  factory $AnalyticsEventsCopyWith(
          AnalyticsEvents value, $Res Function(AnalyticsEvents) then) =
      _$AnalyticsEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnalyticsEventsCopyWithImpl<$Res>
    implements $AnalyticsEventsCopyWith<$Res> {
  _$AnalyticsEventsCopyWithImpl(this._value, this._then);

  final AnalyticsEvents _value;
  // ignore: unused_field
  final $Res Function(AnalyticsEvents) _then;
}

/// @nodoc
abstract class _$$TextChangedCopyWith<$Res> {
  factory _$$TextChangedCopyWith(
          _$TextChanged value, $Res Function(_$TextChanged) then) =
      __$$TextChangedCopyWithImpl<$Res>;
  $Res call({String? text});
}

/// @nodoc
class __$$TextChangedCopyWithImpl<$Res>
    extends _$AnalyticsEventsCopyWithImpl<$Res>
    implements _$$TextChangedCopyWith<$Res> {
  __$$TextChangedCopyWithImpl(
      _$TextChanged _value, $Res Function(_$TextChanged) _then)
      : super(_value, (v) => _then(v as _$TextChanged));

  @override
  _$TextChanged get _value => super._value as _$TextChanged;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$TextChanged(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TextChanged implements TextChanged {
  const _$TextChanged({required this.text});

  @override
  final String? text;

  @override
  String toString() {
    return 'AnalyticsEvents.textChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextChanged &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$TextChangedCopyWith<_$TextChanged> get copyWith =>
      __$$TextChangedCopyWithImpl<_$TextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? text) textChanged,
    required TResult Function() logEvent,
  }) {
    return textChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? text)? textChanged,
    TResult Function()? logEvent,
  }) {
    return textChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? text)? textChanged,
    TResult Function()? logEvent,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) textChanged,
    required TResult Function(LogEvent value) logEvent,
  }) {
    return textChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextChanged value)? textChanged,
    TResult Function(LogEvent value)? logEvent,
  }) {
    return textChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? textChanged,
    TResult Function(LogEvent value)? logEvent,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(this);
    }
    return orElse();
  }
}

abstract class TextChanged implements AnalyticsEvents {
  const factory TextChanged({required final String? text}) = _$TextChanged;

  String? get text;
  @JsonKey(ignore: true)
  _$$TextChangedCopyWith<_$TextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogEventCopyWith<$Res> {
  factory _$$LogEventCopyWith(
          _$LogEvent value, $Res Function(_$LogEvent) then) =
      __$$LogEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogEventCopyWithImpl<$Res> extends _$AnalyticsEventsCopyWithImpl<$Res>
    implements _$$LogEventCopyWith<$Res> {
  __$$LogEventCopyWithImpl(_$LogEvent _value, $Res Function(_$LogEvent) _then)
      : super(_value, (v) => _then(v as _$LogEvent));

  @override
  _$LogEvent get _value => super._value as _$LogEvent;
}

/// @nodoc

class _$LogEvent implements LogEvent {
  const _$LogEvent();

  @override
  String toString() {
    return 'AnalyticsEvents.logEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? text) textChanged,
    required TResult Function() logEvent,
  }) {
    return logEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? text)? textChanged,
    TResult Function()? logEvent,
  }) {
    return logEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? text)? textChanged,
    TResult Function()? logEvent,
    required TResult orElse(),
  }) {
    if (logEvent != null) {
      return logEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextChanged value) textChanged,
    required TResult Function(LogEvent value) logEvent,
  }) {
    return logEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TextChanged value)? textChanged,
    TResult Function(LogEvent value)? logEvent,
  }) {
    return logEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextChanged value)? textChanged,
    TResult Function(LogEvent value)? logEvent,
    required TResult orElse(),
  }) {
    if (logEvent != null) {
      return logEvent(this);
    }
    return orElse();
  }
}

abstract class LogEvent implements AnalyticsEvents {
  const factory LogEvent() = _$LogEvent;
}
