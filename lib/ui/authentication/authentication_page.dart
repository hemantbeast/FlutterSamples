import 'package:firebase_sample/providers/authentication/authentication_provider.dart';
import 'package:firebase_sample/providers/authentication/authentication_state.dart';
import 'package:firebase_sample/styles/app_styles.dart';
import 'package:firebase_sample/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthenticationPage extends ConsumerStatefulWidget {
  const AuthenticationPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends ConsumerState<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    var state = ref.watch(authenticationProvider);
    var event = ref.watch(authenticationProvider.notifier);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppWidgets.appBar('Authentication'),
        body: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const RSizedBox(
                height: 80,
              ),
              TextField(
                onChanged: (value) => event.mapEvents(AuthenticationEvent.emailChanged(email: value)),
                decoration: inputDecoration(
                  'Enter email',
                  icon: Icon(Icons.email, size: 15.w)
                ),
              ),
              const RSizedBox(
                height: 15,
              ),
              TextField(
                obscureText: !state.passwordVisibility,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) => event.mapEvents(AuthenticationEvent.passwordChanged(password: value)),
                decoration: inputDecoration(
                  'Enter password',
                  icon: Icon(Icons.lock, size: 15.w),
                  suffixIcon: InkWell(
                    child: Icon(
                      state.passwordVisibility ? Icons.visibility_off : Icons.visibility,
                    ),
                    onTap: () => event.mapEvents(AuthenticationEvent.visibilityChanged(visibility: !state.passwordVisibility)),
                  ),
                ),
              ),
              const RSizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () => event.mapEvents(const AuthenticationEvent.login()),
                    style: AppStyles.elevatedButtonStyle(context: context, width: 150.w),
                    child: const Text('Sign in')
                  ),
                  ElevatedButton(
                      onPressed: () => event.mapEvents(const AuthenticationEvent.register()),
                      style: AppStyles.elevatedButtonStyle(context: context, width: 150.w),
                      child: const Text('Sign up')
                  ),
                ],
              ),
              const RSizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.grey.shade300,
                    height: 1.h,
                    width: 150.w,
                    alignment: Alignment.center,
                  ),
                  const RSizedBox(
                    width: 20,
                  ),
                  Text(
                    'or',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const RSizedBox(
                    width: 20,
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    height: 1.h,
                    width: 150.w,
                    alignment: Alignment.center,
                  ),
                ],
              ),
              const RSizedBox(
                height: 50,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(21.r),
                  child: Ink(
                    height: 40.h,
                    width: 250.w,
                    padding: EdgeInsets.symmetric(horizontal: 12.r),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/ic_google.png', height: 20.h, width: 20.w)
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Continue with Google',
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () => event.mapEvents(const AuthenticationEvent.googleLogin()),
                ),
              ),
              const RSizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(21.r),
                  child: Ink(
                    height: 40.h,
                    width: 250.w,
                    padding: EdgeInsets.symmetric(horizontal: 12.r),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.phone_android, color: Colors.blue, size: 20.w)
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Continue with Phone',
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              )
            ],
          )
        ),
      ),
    );
  }

  InputDecoration inputDecoration(String text, {Widget? icon, Widget? suffixIcon}) {
    return InputDecoration(
      isDense: true,
      hintText: text,
      hintStyle: TextStyle(color: Colors.grey, fontSize: 16.sp, fontWeight: FontWeight.w400),
      prefixIcon: Padding(
        padding: EdgeInsets.only(right: 10.r),
        child: icon,
      ),
      prefixIconConstraints: BoxConstraints(minHeight: 2.h, minWidth: 2.w),
      suffixIcon: suffixIcon,
      suffixIconConstraints: BoxConstraints(minHeight: 2.h, minWidth: 2.w)
    );
  }
}
