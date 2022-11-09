// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VideoModelAdapter extends TypeAdapter<VideoModel> {
  @override
  final int typeId = 1;

  @override
  VideoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VideoModel(
      description: fields[0] as String?,
      sources: (fields[1] as List?)?.cast<String>(),
      subtitle: fields[2] as String?,
      thumb: fields[3] as String?,
      title: fields[4] as String?,
    )
      ..isDownloading = fields[5] as bool?
      ..filePath = fields[6] as String?
      ..progress = fields[7] as int?;
  }

  @override
  void write(BinaryWriter writer, VideoModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.description)
      ..writeByte(1)
      ..write(obj.sources)
      ..writeByte(2)
      ..write(obj.subtitle)
      ..writeByte(3)
      ..write(obj.thumb)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.isDownloading)
      ..writeByte(6)
      ..write(obj.filePath)
      ..writeByte(7)
      ..write(obj.progress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VideoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) =>
    ResponseModel(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseModelToJson(ResponseModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      name: json['name'] as String?,
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'videos': instance.videos,
    };

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) => VideoModel(
      description: json['description'] as String?,
      sources:
          (json['sources'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subtitle: json['subtitle'] as String?,
      thumb: json['thumb'] as String?,
      title: json['title'] as String?,
    )
      ..isDownloading = json['isDownloading'] as bool?
      ..filePath = json['filePath'] as String?
      ..progress = json['progress'] as int?;

Map<String, dynamic> _$VideoModelToJson(VideoModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'sources': instance.sources,
      'subtitle': instance.subtitle,
      'thumb': instance.thumb,
      'title': instance.title,
      'isDownloading': instance.isDownloading,
      'filePath': instance.filePath,
      'progress': instance.progress,
    };
