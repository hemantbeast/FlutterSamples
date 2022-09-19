import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel extends Equatable {
  final String? message;
  final String? code;

  const ErrorModel({
    this.message,
    this.code,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);

  @override
  List<Object?> get props => [message, code];
}
