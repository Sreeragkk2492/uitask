import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:uitask/controller/passcontroller.dart';
import 'package:uitask/view/widgets/utilities/appcolors.dart';

class Logintextfield extends StatelessWidget {
  IconData? icons;
  IconData? suffixicon;
  String? labeltext;
  Callback? suffixbutton;
  
  Passcontroller? controller ;

  Logintextfield({super.key, this.icons, this.labeltext, this.suffixicon,this.suffixbutton,this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Appcolor.headlinecolor,
      obscureText: false,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: suffixbutton,
              icon: Icon(suffixicon)),
          enabled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Appcolor.secondarycolor)),
          // disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Appcolor.secondarycolor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Appcolor.secondarycolor)),
          prefixIcon: Icon(
            icons,
            color: Appcolor.secondarycolor,
          ),
         hintText: labeltext,
          labelStyle: TextStyle(color: Appcolor.secondarycolor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15), 
              borderSide: BorderSide(color: Appcolor.secondarycolor))),
    );
  }
}
