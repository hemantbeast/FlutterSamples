import 'package:firebase_sample/providers/phone/phone_provider.dart';
import 'package:firebase_sample/providers/phone/phone_state.dart';
import 'package:firebase_sample/routes/app_router.dart';
import 'package:firebase_sample/routes/routes.dart';
import 'package:firebase_sample/styles/app_styles.dart';
import 'package:firebase_sample/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pinput/pinput.dart';

class PhonePage extends HookConsumerWidget {
  const PhonePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = useTextEditingController();
    var focusNode = useFocusNode();

    var state = ref.watch(phoneProvider);
    var event = ref.watch(phoneProvider.notifier);
    listenCallbacks(ref);

    return Scaffold(
      appBar: AppWidgets.appBar('Phone Auth'),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const RSizedBox(
              height: 50,
            ),
            IntlPhoneField(
              onChanged: (value) => event.mapEvents(PhoneEvent.numberChanged(phoneNumber: value.completeNumber)),
              keyboardType: TextInputType.phone,
              initialCountryCode: 'IN',
              decoration: inputDecoration(
                  'Enter phone number',
                  icon: Icon(Icons.phone_android, size: 15.w)
              ),
            ),
            const RSizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();

                  if (state.phoneNumber.isNotEmpty) {
                    event.mapEvents(const PhoneEvent.codeSent());
                  }
                },
                style: AppStyles.elevatedButtonStyle(
                  context: context,
                  width: 150.w,
                  isDisable: state.isCodeSent
                ),
                child: const Text('Next')
              ),
            ),
            const RSizedBox(
              height: 70,
            ),
            Visibility(
              visible: state.isCodeSent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Enter verification code below',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.sp
                    ),
                  ),
                  const RSizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Pinput(
                      length: 6,
                      onChanged: (value) => event.mapEvents(PhoneEvent.smsCodeChanged(smsCode: value)),
                      pinAnimationType: PinAnimationType.fade,
                      controller: controller,
                      focusNode: focusNode,
                      defaultPinTheme: pinTheme(),
                      focusedPinTheme: pinTheme(borderColor: Colors.blue),
                    ),
                  ),
                  const RSizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();

                          if (state.smsCode.length == 6) {
                            event.mapEvents(const PhoneEvent.authenticate());
                          }
                        },
                        style: AppStyles.elevatedButtonStyle(
                            context: context,
                            width: 150.w,
                            isDisable: state.smsCode.length != 6
                        ),
                        child: const Text('Login')
                    ),
                  )
                ],
              ),
            ),
          ],
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

  PinTheme pinTheme({Color? borderColor}) {
    return PinTheme(
      width: 45.w,
      height: 45.h,
      textStyle: TextStyle(
          color: Colors.black,
          fontSize: 16.sp
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: borderColor ?? Colors.transparent)
      )
    );
  }

  Column cursorView({required Color color}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 40.w,
          height: 3.h,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ],
    );
  }

  listenCallbacks(WidgetRef ref) {
    ref.listen<PhoneState>(phoneProvider, (previous, next) {
      next.failureOrSuccess.fold(() {}, (a) => a.fold(
            (message) => Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT),
            (user) {
              if (user != null) {
                Fluttertoast.showToast(msg: 'Logged in successfully', toastLength: Toast.LENGTH_SHORT);
                AppRouter.popAndPushNamed(Routes.userInfo, args: user);
              } else {
                Fluttertoast.showToast(msg: 'Failed to login', toastLength: Toast.LENGTH_SHORT);
              }
            }
        ));
    });
  }
}
