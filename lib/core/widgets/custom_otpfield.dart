import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/colors.dart';

class CustomOtpField extends StatelessWidget {
  const CustomOtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return  OtpTextField(
      cursorColor: headlinecolor,
      focusedBorderColor: secondarycolor,
                        numberOfFields: 6, 
                        fieldHeight: 50.h,
                        borderRadius: BorderRadius.circular(6.r),
                        enabledBorderColor: secondarycolor,
                        showFieldAsBox: true,
                        fieldWidth: 45.w,
                      );
  }
}