import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/colors.dart';

class OtpTextfieldwidget extends StatelessWidget {
  const OtpTextfieldwidget({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 253.h, 
      height: 48.h,
      child: TextField(
        keyboardType: TextInputType.number, 
        cursorColor: headlinecolor,
        decoration: InputDecoration(
          
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
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
