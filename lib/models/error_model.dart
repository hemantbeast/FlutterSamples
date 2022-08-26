import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final String? message;
  final String? code;

  const ErrorModel({
    this.message,
    this.code,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        message: json['message'],
        code: json['code'],
      );

  @override
  List<Object?> get props => [message, code];
}
