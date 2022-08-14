import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/routes/app_router.dart';
import 'package:firebase_sample/routes/routes.dart';
import 'package:firebase_sample/styles/app_styles.dart';
import 'package:firebase_sample/utils/common_utils.dart';
import 'package:firebase_sample/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';

class UserInfoPage extends StatelessWidget {
  final User user;

  const UserInfoPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidgets.appBar('User Info'),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Visibility(
              visible: user.photoURL != null && user.photoURL!.isNotEmpty,
              child: Image.network(
                user.photoURL ?? '',
                height: 120.h,
                width: 120.w,
                fit: BoxFit.fitHeight,
                alignment: Alignment.topCenter,
              ),
            ),
            RSizedBox(
              height: user.photoURL != null && user.photoURL!.isNotEmpty ? 25 : 15,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Name: ',
                    style: AppStyles.headerTextStyle()
                  ),
                  TextSpan(
                    text: user.displayName,
                    style: AppStyles.valueTextStyle()
                  )
                ]
              )
            ),
            Visibility(
              visible: user.email != null && user.email!.isNotEmpty,
              child: const RSizedBox(
                height: 15,
              ),
            ),
            Visibility(
              visible: user.email != null && user.email!.isNotEmpty,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Email: ',
                      style: AppStyles.headerTextStyle()
                    ),
                    TextSpan(
                      text: user.email,
                      style: AppStyles.valueTextStyle()
                    )
                  ]
                )
              ),
            ),
            Visibility(
              visible: user.phoneNumber != null && user.phoneNumber!.isNotEmpty,
              child: const RSizedBox(
                height: 15,
              ),
            ),
            Visibility(
              visible: user.phoneNumber != null && user.phoneNumber!.isNotEmpty,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Phone number: ',
                      style: AppStyles.headerTextStyle()
                    ),
                    TextSpan(
                      text: user.phoneNumber,
                      style: AppStyles.valueTextStyle()
                    )
                  ]
                )
              ),
            ),
            const RSizedBox(
              height: 15,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Account type: ',
                    style: AppStyles.headerTextStyle()
                  ),
                  TextSpan(
                    text: user.providerData[0].providerId,
                    style: AppStyles.valueTextStyle()
                  )
                ]
              )
            ),
            const RSizedBox(
              height: 15,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Last login time: ',
                    style: AppStyles.headerTextStyle()
                  ),
                  TextSpan(
                    text: DateFormat.yMMMMd('en-US').add_jm().format(user.metadata.lastSignInTime!),
                    style: AppStyles.valueTextStyle()
                  )
                ]
              )
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () async => await userLogout(),
                  style: AppStyles.elevatedButtonStyle(context: context, width: 150.w),
                  child: const Text('Logout')
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  userLogout() async {
    CommonUtils.showLoader();

    if (user.providerData[0].providerId.contains('google')) {
      await googleLogout();
    }
    await FirebaseAuth.instance.signOut();

    CommonUtils.hideLoader();
    AppRouter.popUntil(Routes.authentication);
  }

  googleLogout() async {
    final GoogleSignIn signIn = GoogleSignIn();
    await signIn.signOut();
  }
}
