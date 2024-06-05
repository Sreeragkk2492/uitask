import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/core/constants/colors.dart';
import 'package:uitask/core/constants/widgets.dart';
import 'package:uitask/core/widgets/custom_dropdown.dart';
import 'package:uitask/core/widgets/custom_otpfield.dart';
import 'package:uitask/routes/routes.dart';
import 'package:uitask/screens/auth/signupwithotp/widgets/otp_button.dart';
import 'package:uitask/screens/auth/signupwithotp/widgets/otp_textfield.dart';

class SignupWithOtpScreen extends StatelessWidget {
  const SignupWithOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
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
                    const CustomDropdownwidget(),
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
                    const OtpTextfieldwidget(),
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
                  padding: EdgeInsets.only(left: 20.w),
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
                      const CustomOtpField(),
                    ],
                  ),
                )
              ],
            ),
            kHeight50,
            OtpButton(
              ontap: () {
                Get.toNamed(Routes.SIGNUP);
              },
              title: 'Signup',
            )
          ],
        )),
      ),
    );
  }
}
