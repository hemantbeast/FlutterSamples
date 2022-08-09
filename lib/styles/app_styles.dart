import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static ButtonStyle elevatedButtonStyle({
    required BuildContext context,
    double? width,
    double? height
  }) {
    height ??= 45.h;

    return ElevatedButton.styleFrom(
        primary: Colors.blue,
        fixedSize: width != null ? Size(width, height) : Size(double.infinity, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
          side: BorderSide.none,
        ),
        textStyle: TextStyle(
            color: Colors.white,
            fontSize: 15.sp,
            fontWeight: FontWeight.w600
        )
    );
  }
}