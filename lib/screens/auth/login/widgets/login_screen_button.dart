import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/colors.dart';
import 'package:uitask/core/view_models/reponsive.dart';

class LoginScreenButtons extends StatelessWidget {
  final String title;
  const LoginScreenButtons({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          width:Responsive.isMobile(context)? 315.w:428.w, 
          height: 48.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r), color: secondarycolor),
          child: Center(
              child: Text(
            title,
            style: TextStyle(color: primarycolor),
          ))),
    );
  }
}
