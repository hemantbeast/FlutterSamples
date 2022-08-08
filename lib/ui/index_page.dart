import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_sample/routes/app_router.dart';
import 'package:firebase_sample/routes/routes.dart';
import 'package:firebase_sample/styles/app_styles.dart';
import 'package:firebase_sample/utils/notification_utils.dart';
import 'package:firebase_sample/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  void initState() {
    super.initState();
    trackScreen('Index');
    initFcmToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appBar('Flutter sample'),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => AppRouter.pushNamed(Routes.analytics),
                style: AppStyles.elevatedButtonStyle(context: context, width: 150.h),
                child: const Text('Analytics')
            )
          ],
        ),
      ),
    );
  }

  void trackScreen(String name) async {
    await FirebaseAnalytics.instance.logScreenView(
        screenName: name,
        screenClass: name
    );
  }

  void initFcmToken() async {
    var messaging = FirebaseMessaging.instance;

    // On iOS, this helps to take the user permissions
    var settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    debugPrint('User granted permission: ${settings.authorizationStatus}');

    if (settings.authorizationStatus != AuthorizationStatus.authorized) {
      return;
    }

    var fcmToken = await messaging.getToken();
    debugPrint(fcmToken);

    messaging.onTokenRefresh
        .listen((token) {
      debugPrint('refresh token: $token');
    })
        .onError((err) {
      debugPrint(err);
    });

    // For handling the received notifications
    FirebaseMessaging.onMessage
        .listen((event) {
      debugPrint('data: ${event.data}');
      debugPrint('notification: ${event.notification}');
      NotificationUtils.showNotification(event);
    });

    // For handling notification when the app is in background but not terminated
    FirebaseMessaging.onMessageOpenedApp
        .listen((RemoteMessage message) {
      debugPrint('data: ${message.data}');
      debugPrint('notification: ${message.notification}');
      NotificationUtils.showNotification(message);
    });
  }
}
