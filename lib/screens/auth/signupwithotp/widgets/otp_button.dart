import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:uitask/core/constants/colors.dart';

class OtpButton extends StatelessWidget {
final  String title;
final  Callback? ontap;
   OtpButton({super.key,required this.title,this.ontap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:ontap ,
      child: Container(
                width: 339.w,
                height: 48.h,
                decoration: BoxDecoration(
                    color: secondarycolor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: primarycolor),
                  ),
                ),
              ),
    );
  }
}