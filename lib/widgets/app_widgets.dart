import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidgets {
  static AppBar appBar(String text) {
    return AppBar(
      title: Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700
        )
      ),
    );
  }
}