import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/appcolors.dart';

class SignUpTextfieldwidget extends StatelessWidget {
 final String hintext;
 final IconData ? suffixIcon;
 final TextInputType?keyboardtype;
   SignUpTextfieldwidget({super.key,required this.hintext,this.suffixIcon,this.keyboardtype});

  @override
  Widget build(BuildContext context) {
    return  Container(
                width: 345.w,
                height: 48.h,
                child: TextField(
                  cursorColor: headlinecolor, 
                  keyboardType: keyboardtype,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: secondarycolor)),
                    suffixIcon: Icon(suffixIcon),
                    hintText: hintext,
                    hintStyle: TextStyle(color: secondarycolor),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: secondarycolor),
                      
                    ),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: secondarycolor))
                  ),
                ),
               );
  }
}