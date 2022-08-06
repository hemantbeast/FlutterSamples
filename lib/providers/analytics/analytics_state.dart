import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_state.freezed.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState({
    required String event
  }) = _AnalyticsState;

  factory AnalyticsState.initial() => const AnalyticsState(event: '');
}

@freezed
class AnalyticsEvents with _$AnalyticsEvents {
  const factory AnalyticsEvents.textChanged({required String? text}) = TextChanged;
  const factory AnalyticsEvents.logEvent() = LogEvent;
}
