import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:video_list/models/response_model.dart';
import 'package:video_list/ui/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupHive();
  runApp(const ProviderScope(child: MyApp()));
}

Future setupHive() async {
  await Hive.initFlutter();

  // create a encrypted key for cache response
  const secureStorage = FlutterSecureStorage();
  var encryptionKey = await secureStorage.read(key: 'encryption_key');
  if (encryptionKey == null) {
    final key = Hive.generateSecureKey();
    encryptionKey = base64UrlEncode(key);
    await secureStorage.write(
      key: 'encryption_key',
      value: encryptionKey,
    );
  }

  Hive.registerAdapter(VideoModelAdapter());
  var cipherKey = base64Url.decode(encryptionKey);
  await Hive.openBox('videoList', encryptionCipher: HiveAesCipher(cipherKey));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
