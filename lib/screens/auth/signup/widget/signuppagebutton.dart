import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/appcolors.dart';

class Signpagebutton extends StatelessWidget {
  const Signpagebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                  width: 345.w,
                  height: 48.h,
                  decoration: BoxDecoration(color: secondarycolor,borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: primarycolor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                );
  }
}