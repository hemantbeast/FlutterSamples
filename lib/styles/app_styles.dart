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

  static TextStyle headerTextStyle() {
    return TextStyle(
      color: Colors.grey.shade500,
      fontSize: 13.sp,
      fontWeight: FontWeight.w400
    );
  }

  static TextStyle valueTextStyle() {
    return TextStyle(
      color: Colors.grey.shade900,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500
    );
  }
}