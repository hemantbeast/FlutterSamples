import 'package:flutter/material.dart';

class AppStyle {
  static ButtonStyle buttonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
        side: BorderSide.none,
      ),
      textStyle: textStyle(),
    );
  }

  static TextStyle textStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }
}
