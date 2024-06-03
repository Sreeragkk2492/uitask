

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/core/constants/colors.dart';
import 'package:uitask/screens/auth/controller/auth_controller.dart';

class CustomPasswordfield extends StatelessWidget {
  //IconData?icons;
  // IconData?suffixicon;
 final Widget? suffixbutton;
 
 final String? hintText;
  final bool sufficicon;
  final bool obscureText;
  final Widget? prefixIcon;
  CustomPasswordfield(
      {super.key, this.hintText, this.suffixbutton, this.sufficicon = true, required this.obscureText,this.prefixIcon});
 final Authcontroller controller = Get.put(Authcontroller());
  @override
  Widget build(BuildContext context) {
    
      return TextField(
        cursorColor: headlinecolor,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: secondarycolor), 
            suffixIcon: suffixbutton,
            enabled: true,
            enabledBorder: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(15.r), 
                borderSide: BorderSide(color: secondarycolor)),
            // disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Appcolor.secondarycolor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(color: secondarycolor,)),
            prefixIcon: prefixIcon,
            
            labelStyle: TextStyle(color: secondarycolor),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(color: secondarycolor,))),
      );
    
  }
}
