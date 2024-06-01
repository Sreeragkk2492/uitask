import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/core/constants/appcolors.dart';
import 'package:uitask/core/constants/widgets.dart';
import 'package:uitask/screens/auth/signupwithotp/widgets/buttons.dart';
import 'package:uitask/screens/auth/signupwithotp/widgets/dropdownwidget.dart';
import 'package:uitask/screens/auth/signupwithotp/widgets/otpField.dart';
import 'package:uitask/screens/auth/signupwithotp/widgets/otptextfield.dart';
import 'package:uitask/screens/auth/signup/signup.dart';

class SignupWithOtp extends StatefulWidget {
  @override
  State<SignupWithOtp> createState() => _SignupWithOtpState();
}

class _SignupWithOtpState extends State<SignupWithOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            kHeight90,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'india',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: headlinecolor),
                    ),
                    Dropdownwidget(),
                  ],
                ),
                kWidth20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobile number',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: headlinecolor),
                    ),
                    Textfieldwidget(),
                  ],
                )
              ],
            ),
            kHeight30,
            OtpButton(
              title: 'Request OTP',
            ),
            kHeight120,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter otp',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: headlinecolor),
                      ),
                      kHeight20,
                      OtpField()
                    ],
                  ),
                )
              ],
            ),
            kHeight50,
            OtpButton(
              ontap: () {
                Get.to(()=>SignUpPage());
              },
              title: 'Signup',
            )
          ],
        )),
      ),
    );
  }
}
