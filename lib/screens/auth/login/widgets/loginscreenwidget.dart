

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import 'package:uitask/screens/auth/controller/authcontroller.dart';
import 'package:uitask/core/constants/appcolors.dart';

class Logintextfield extends StatelessWidget {
 final IconData? icons;
 
 final String? hinttext;
 
  
 final Authcontroller? controller ;

  const Logintextfield({super.key, this.icons, this.hinttext,this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: headlinecolor,
      obscureText: false,
      decoration: InputDecoration(
         
          enabled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(color: secondarycolor)),
          // disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Appcolor.secondarycolor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(color: secondarycolor)),
          prefixIcon: Icon(
            icons,
            color: secondarycolor,
          ),
         hintText: hinttext,
          hintStyle: TextStyle(color: secondarycolor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r), 
              borderSide: BorderSide(color: secondarycolor))),
    );
  }
}
