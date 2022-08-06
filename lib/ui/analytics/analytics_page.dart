import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_sample/providers/analytics/analytics_provider.dart';
import 'package:firebase_sample/providers/analytics/analytics_state.dart';
import 'package:firebase_sample/styles/app_styles.dart';
import 'package:firebase_sample/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AnalyticsPage extends HookConsumerWidget {
  const AnalyticsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var events = ref.watch(analyticsProvider.notifier);
    var state = ref.watch(analyticsProvider);
    var textController = useTextEditingController();

    textController.text = state.event;

    FirebaseAnalytics.instance.logScreenView(
        screenName: 'Analytics',
        screenClass: 'Analytics'
    );

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppWidgets.appBar('Analytics'),
        body: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter value'
                ),
                onSubmitted: (value) => events.mapToEvents(AnalyticsEvents.textChanged(text: value)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      events.mapToEvents(AnalyticsEvents.textChanged(text: textController.text));
                      events.mapToEvents(const AnalyticsEvents.logEvent());
                      FocusScope.of(context).unfocus();
                    },
                    style: AppStyles.elevatedButtonStyle(context: context, width: 150.h),
                    child: const Text('Log Event')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
