

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/colors.dart';



import 'package:uitask/screens/auth/controller/auth_controller.dart';


class CustomTextfield extends StatelessWidget {
 final Widget? prefixIcons;
 final Widget? suffixIcon;
 final String? hintText;
 final Authcontroller? controller ;
 final TextInputType?keyboardType;

  const CustomTextfield({super.key, this.prefixIcons, this.hintText,this.controller,this.keyboardType,this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        keyboardType:keyboardType ,
        cursorColor: headlinecolor,
        obscureText: false,
        decoration: InputDecoration(
           suffixIcon: suffixIcon,
            enabled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(color: secondarycolor)),
            // disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Appcolor.secondarycolor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(color: secondarycolor)),
            prefixIcon: prefixIcons,
           hintText: hintText,
            hintStyle: TextStyle(color: secondarycolor),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r), 
                borderSide: BorderSide(color: secondarycolor))),
      ),
    );
  }
}