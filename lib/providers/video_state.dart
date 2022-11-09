import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_list/models/response_model.dart';

part 'video_state.freezed.dart';
part 'video_state.g.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState({
    required List<VideoModel> videoList,
  }) = _VideoState;

  factory VideoState.initial() => const VideoState(videoList: []);

  factory VideoState.fromJson(Map<String, dynamic> json) => _$VideoStateFromJson(json);
}

@freezed
class VideoEvent with _$VideoEvent {
  const factory VideoEvent.download({required VideoModel video}) = _VideoDownload;
}
