import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_sample/routes/app_router.dart';
import 'package:firebase_sample/routes/routes.dart';
import 'package:firebase_sample/styles/app_styles.dart';
import 'package:firebase_sample/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics.instance.logScreenView(
      screenName: 'Index',
      screenClass: 'Index'
    );

    return Scaffold(
      appBar: AppWidgets.appBar('Flutter sample'),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
}
