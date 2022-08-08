import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_sample/main.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationUtils {
  static AndroidInitializationSettings initializationSettingsAndroid =
    const AndroidInitializationSettings('app_icon');

  static IOSInitializationSettings initializationSettingsIOS = const IOSInitializationSettings(
    requestAlertPermission: false,
    requestBadgePermission: false,
    requestSoundPermission: false
  );

  static InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS
  );

  static Future showNotification(RemoteMessage message) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'NotificationChannel',
        'General',
        channelDescription: 'general notifications',
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'notification'
    );

    const NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);

    var title = message.notification?.title ?? message.data['title'];
    var body = message.notification?.body ?? message.data['body'];

    await localNotificationsPlugin.show(
        70, title, body, platformChannelSpecifics,
        payload: jsonEncode(message.data));
  }
}