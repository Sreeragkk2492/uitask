import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/appcolors.dart';

class Labelwidget extends StatelessWidget {

 final String title;
   Labelwidget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Text(
                  title,
                  style: TextStyle(
                      fontSize: 14.sp, 
                      fontWeight: FontWeight.w400,
                      color: headlinecolor),
                );
  }
}