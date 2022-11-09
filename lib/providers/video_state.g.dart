// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoState _$$_VideoStateFromJson(Map<String, dynamic> json) =>
    _$_VideoState(
      videoList: (json['videoList'] as List<dynamic>)
          .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VideoStateToJson(_$_VideoState instance) =>
    <String, dynamic>{
      'videoList': instance.videoList,
    };
