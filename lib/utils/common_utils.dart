import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonUtils {
  static showLoader() {
    EasyLoading.show(
      maskType: EasyLoadingMaskType.custom,
      dismissOnTap: false,
      indicator: Padding(
        padding: EdgeInsets.all(15.r),
        child: const CircularProgressIndicator(
          color: Colors.blue,
        ),
      )
    );
  }

  static hideLoader() {
    EasyLoading.dismiss();
  }
}