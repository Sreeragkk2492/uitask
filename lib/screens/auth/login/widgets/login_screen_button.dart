import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/colors.dart';

class LoginScreenButtons extends StatelessWidget {
 final String  title;
   LoginScreenButtons({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 345.w,
        height: 48.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: secondarycolor),
        child: Center(child: Text(title,style: TextStyle(color: primarycolor),)));
  }
}
