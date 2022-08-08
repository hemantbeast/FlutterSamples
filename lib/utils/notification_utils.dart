import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_sample/main.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

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
    String? imageUrl = message.data['image'];

    if (imageUrl == null || imageUrl.isEmpty) {
      if (Platform.isAndroid) {
        imageUrl = message.notification?.android?.imageUrl;
      } else if (Platform.isIOS) {
        imageUrl = message.notification?.apple?.imageUrl;
      }
    }

    if (imageUrl == null || imageUrl.isEmpty) {
      _showSimpleNotification(message);
    } else {
      _showImageNotification(message, imageUrl);
    }
  }

  static Future _showSimpleNotification(RemoteMessage message) async {
    var rng = Random();
    var title = message.notification?.title ?? message.data['title'];
    var body = message.notification?.body ?? message.data['body'];

    final androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'NotificationChannel',
        'General',
        channelDescription: 'general notifications',
        importance: Importance.max,
        priority: Priority.high,
        styleInformation: BigTextStyleInformation(body)
    );

    final platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics
    );

    await localNotificationsPlugin.show(
        rng.nextInt(700), title, body, platformChannelSpecifics,
        payload: jsonEncode(message.data));
  }

  static Future _showImageNotification(RemoteMessage message, String imageUrl) async {
    final bigPicture = ByteArrayAndroidBitmap(
      await _getByteArrayFromUrl(imageUrl)
    );

    var rng = Random();
    var title = message.notification?.title ?? message.data['title'];
    var body = message.notification?.body ?? message.data['body'];

    final bigPictureStyle = BigPictureStyleInformation(
        bigPicture,
        contentTitle: title
    );

    final androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'NotificationChannel',
        'General',
        channelDescription: 'general notifications',
        importance: Importance.max,
        priority: Priority.high,
        styleInformation: bigPictureStyle
    );

    final NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics
    );

    await localNotificationsPlugin.show(
        rng.nextInt(700), title, body, platformChannelSpecifics,
        payload: jsonEncode(message.data));
  }

  static Future<Uint8List> _getByteArrayFromUrl(String url) async {
    final http.Response response = await http.get(Uri.parse(url));
    return response.bodyBytes;
  }
}