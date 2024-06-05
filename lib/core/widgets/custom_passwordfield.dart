import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/colors.dart';

class CustomPasswordfield extends StatelessWidget {
  final Widget? suffixbutton;

  final String? hintText;
  final bool sufficicon;
  final bool obscureText;
  final Widget? prefixIcon;
  const CustomPasswordfield(
      {super.key,
      this.hintText,
      this.suffixbutton,
      this.sufficicon = true,
      required this.obscureText,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField( 
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
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                color: secondarycolor,
              )),
          prefixIcon: prefixIcon,
          labelStyle: TextStyle(color: secondarycolor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                color: secondarycolor,
              ))),
    );
  }
}
