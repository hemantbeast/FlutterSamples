import 'package:firebase_sample/providers/register/register_provider.dart';
import 'package:firebase_sample/providers/register/register_state.dart';
import 'package:firebase_sample/routes/app_router.dart';
import 'package:firebase_sample/routes/routes.dart';
import 'package:firebase_sample/styles/app_styles.dart';
import 'package:firebase_sample/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterPage extends ConsumerWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var event = ref.watch(registerProvider.notifier);
    listenCallbacks(ref);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppWidgets.appBar('Register'),
        body: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: (value) => event.mapEvents(RegisterEvent.nameChanged(name: value)),
                decoration: inputDecoration(
                    'Enter name',
                    icon: Icon(Icons.person, size: 15.w)
                ),
              ),
              const RSizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => event.mapEvents(RegisterEvent.emailChanged(email: value)),
                decoration: inputDecoration(
                    'Enter email',
                    icon: Icon(Icons.email, size: 15.w)
                ),
              ),
              const RSizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) => event.mapEvents(RegisterEvent.passwordChanged(password: value)),
                decoration: inputDecoration(
                  'Enter password',
                  icon: Icon(Icons.lock, size: 15.w),
                ),
              ),
              const RSizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) => event.mapEvents(RegisterEvent.confirmPasswordChanged(confirmPassword: value)),
                decoration: inputDecoration(
                  'Enter confirm password',
                  icon: Icon(Icons.lock, size: 15.w),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      event.mapEvents(const RegisterEvent.register());
                    },
                    style: AppStyles.elevatedButtonStyle(context: context, width: 150.w),
                    child: const Text('Register')
                  ),
                )
              ),
            ],
          ),
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

  listenCallbacks(WidgetRef ref) {
    ref.listen<RegisterState>(registerProvider, (previous, next) {
      next.failureOrSuccess.fold(() {}, (a) => a.fold(
              (message) => Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT),
              (user) {
                if (user != null) {
                  Fluttertoast.showToast(msg: 'Registered user successfully', toastLength: Toast.LENGTH_SHORT);
                  AppRouter.popAndPushNamed(Routes.userInfo, args: user);
                } else {
                  Fluttertoast.showToast(msg: 'Failed to register', toastLength: Toast.LENGTH_SHORT);
                }
              }
      ));
    });
  }
}
