import 'dart:io';

import 'package:firebase_sample/providers/analytics/analytics_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:fluttertoast/fluttertoast.dart';

final analyticsProvider = StateNotifierProvider.autoDispose<AnalyticsNotifier, AnalyticsState>((ref) {
  return AnalyticsNotifier(ref: ref);
});


class AnalyticsNotifier extends StateNotifier<AnalyticsState> {
  final Ref ref;

  AnalyticsNotifier({required this.ref}) : super(AnalyticsState.initial());

  Future mapToEvents(AnalyticsEvents events) {
    return events.map(
        textChanged: (value) async => state = state.copyWith(event: value.text!),
        logEvent: (value) async => await logEvents(),
    );
  }

  Future logEvents() async {
    await FirebaseAnalytics.instance.logSelectItem(
      itemListName: 'custom_event',
      items: [
        AnalyticsEventItem(creativeName: state.event)
      ]
    );

    state = state.copyWith(event: '');
    Fluttertoast.showToast(
      msg: 'Event logged!',
      toastLength: Toast.LENGTH_SHORT
    );
  }
}
