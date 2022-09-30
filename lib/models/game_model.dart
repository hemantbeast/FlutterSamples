import 'package:json_annotation/json_annotation.dart';

part 'game_model.g.dart';

@JsonSerializable()
class GameModel {
  final int index;
  String? boxColor;

  GameModel({required this.index, this.boxColor});

  bool get isDefault => boxColor! == '#FFE0E0E0';

  bool get isCompleted => boxColor! == '#FFF44336';

  factory GameModel.fromJson(Map<String, dynamic> json) => _$GameModelFromJson(json);

  Map<String, dynamic> toJson() => _$GameModelToJson(this);
}
