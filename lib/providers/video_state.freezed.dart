// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoState _$VideoStateFromJson(Map<String, dynamic> json) {
  return _VideoState.fromJson(json);
}

/// @nodoc
mixin _$VideoState {
  List<VideoModel> get videoList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoStateCopyWith<VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
  @useResult
  $Res call({List<VideoModel> videoList});
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
  }) {
    return _then(_value.copyWith(
      videoList: null == videoList
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoStateCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
  factory _$$_VideoStateCopyWith(
          _$_VideoState value, $Res Function(_$_VideoState) then) =
      __$$_VideoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VideoModel> videoList});
}

/// @nodoc
class __$$_VideoStateCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$_VideoState>
    implements _$$_VideoStateCopyWith<$Res> {
  __$$_VideoStateCopyWithImpl(
      _$_VideoState _value, $Res Function(_$_VideoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
  }) {
    return _then(_$_VideoState(
      videoList: null == videoList
          ? _value._videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoState implements _VideoState {
  const _$_VideoState({required final List<VideoModel> videoList})
      : _videoList = videoList;

  factory _$_VideoState.fromJson(Map<String, dynamic> json) =>
      _$$_VideoStateFromJson(json);

  final List<VideoModel> _videoList;
  @override
  List<VideoModel> get videoList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoList);
  }

  @override
  String toString() {
    return 'VideoState(videoList: $videoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoState &&
            const DeepCollectionEquality()
                .equals(other._videoList, _videoList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoStateCopyWith<_$_VideoState> get copyWith =>
      __$$_VideoStateCopyWithImpl<_$_VideoState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoStateToJson(
      this,
    );
  }
}

abstract class _VideoState implements VideoState {
  const factory _VideoState({required final List<VideoModel> videoList}) =
      _$_VideoState;

  factory _VideoState.fromJson(Map<String, dynamic> json) =
      _$_VideoState.fromJson;

  @override
  List<VideoModel> get videoList;
  @override
  @JsonKey(ignore: true)
  _$$_VideoStateCopyWith<_$_VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoEvent {
  VideoModel get video => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoModel video) download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoModel video)? download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoModel video)? download,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoDownload value) download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoDownload value)? download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoDownload value)? download,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoEventCopyWith<VideoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEventCopyWith<$Res> {
  factory $VideoEventCopyWith(
          VideoEvent value, $Res Function(VideoEvent) then) =
      _$VideoEventCopyWithImpl<$Res, VideoEvent>;
  @useResult
  $Res call({VideoModel video});
}

/// @nodoc
class _$VideoEventCopyWithImpl<$Res, $Val extends VideoEvent>
    implements $VideoEventCopyWith<$Res> {
  _$VideoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_value.copyWith(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoDownloadCopyWith<$Res>
    implements $VideoEventCopyWith<$Res> {
  factory _$$_VideoDownloadCopyWith(
          _$_VideoDownload value, $Res Function(_$_VideoDownload) then) =
      __$$_VideoDownloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VideoModel video});
}

/// @nodoc
class __$$_VideoDownloadCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$_VideoDownload>
    implements _$$_VideoDownloadCopyWith<$Res> {
  __$$_VideoDownloadCopyWithImpl(
      _$_VideoDownload _value, $Res Function(_$_VideoDownload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_$_VideoDownload(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoModel,
    ));
  }
}

/// @nodoc

class _$_VideoDownload implements _VideoDownload {
  const _$_VideoDownload({required this.video});

  @override
  final VideoModel video;

  @override
  String toString() {
    return 'VideoEvent.download(video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoDownload &&
            (identical(other.video, video) || other.video == video));
  }

  @override
  int get hashCode => Object.hash(runtimeType, video);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoDownloadCopyWith<_$_VideoDownload> get copyWith =>
      __$$_VideoDownloadCopyWithImpl<_$_VideoDownload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoModel video) download,
  }) {
    return download(video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoModel video)? download,
  }) {
    return download?.call(video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoModel video)? download,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoDownload value) download,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoDownload value)? download,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoDownload value)? download,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class _VideoDownload implements VideoEvent {
  const factory _VideoDownload({required final VideoModel video}) =
      _$_VideoDownload;

  @override
  VideoModel get video;
  @override
  @JsonKey(ignore: true)
  _$$_VideoDownloadCopyWith<_$_VideoDownload> get copyWith =>
      throw _privateConstructorUsedError;
}
