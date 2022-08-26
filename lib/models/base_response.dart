import 'package:equatable/equatable.dart';
import 'package:news/utils/app_constants.dart';
import 'package:news/utils/enum_conversion.dart';

class BaseResponse<T> extends Equatable {
  final ApiStatus? status;
  final int? totalResults;
  final T? results;
  final int? nextPage;

  const BaseResponse({
    this.status,
    this.totalResults,
    this.results,
    this.nextPage,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json, Function(dynamic) build) => BaseResponse(
        status: statusValues.map[json['status']],
        totalResults: json['totalResults'],
        results: json['results'] != null ? build(json['results']) : null,
        nextPage: json['nextPage'],
      );

  factory BaseResponse.fromJsonList(Map<String, dynamic> json, Function(List<dynamic>) build) => BaseResponse(
        status: statusValues.map[json['status']],
        totalResults: json['totalResults'],
        results: json['results'] != null ? build(json['results']) : null,
        nextPage: json['nextPage'],
      );

  @override
  List<Object?> get props => [
        status,
        totalResults,
        results,
        nextPage,
      ];

  static EnumValues<ApiStatus> statusValues = EnumValues({
    'success': ApiStatus.success,
    'error': ApiStatus.error,
  });
}
