import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_model.g.dart';

@JsonSerializable()
class ResponseModel {
  List<CategoryModel>? categories;

  ResponseModel({this.categories});

  factory ResponseModel.fromJson(Map<String, dynamic> json) => _$ResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);
}

@JsonSerializable()
class CategoryModel {
  String? name;
  List<VideoModel>? videos;

  CategoryModel({this.name, this.videos});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 1)
class VideoModel {
  @HiveField(0)
  String? description;
  @HiveField(1)
  List<String>? sources;
  @HiveField(2)
  String? subtitle;
  @HiveField(3)
  String? thumb;
  @HiveField(4)
  String? title;
  @HiveField(5)
  bool? isDownloading;
  @HiveField(6)
  String? filePath;
  @HiveField(7)
  int? progress;

  VideoModel({this.description, this.sources, this.subtitle, this.thumb, this.title});

  factory VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoModelToJson(this);
}
