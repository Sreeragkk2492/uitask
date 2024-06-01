import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/appcolors.dart';

class Textfieldwidget extends StatelessWidget {
  const Textfieldwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 253.w,
      height: 48.h,
      child: TextField(
        keyboardType: TextInputType.number, 
        cursorColor: headlinecolor,
        decoration: InputDecoration(
          
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: secondarycolor),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: secondarycolor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: secondarycolor))),
      ),
    );
  }
}
