

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:uitask/screens/auth/controller/authcontroller.dart';
import 'package:uitask/core/constants/appcolors.dart';

class Passwordfield extends StatelessWidget {
  //IconData?icons;
  // IconData?suffixicon;
 final Callback? suffixbutton;
 final String? Text;
  final bool sufficicon;
  Passwordfield(
      {super.key, this.Text, this.suffixbutton, this.sufficicon = true});
 final Authcontroller controller = Get.put(Authcontroller());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextField(
        cursorColor: headlinecolor,
        obscureText: !controller.isLoginPasswordvisible.value,
        decoration: InputDecoration(
            hintText: Text,
            suffixIcon: sufficicon
                ? IconButton(
                    onPressed: () {
                      controller.displaypassword();
                    },
                    icon: Icon(controller.isLoginPasswordvisible.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined))
                : null,
            enabled: true,
            enabledBorder: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(15.r), 
                borderSide: BorderSide(color: secondarycolor)),
            // disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Appcolor.secondarycolor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(color: secondarycolor,)),
            prefixIcon: Icon(
              Icons.shield_outlined, 
              color: secondarycolor,
            ),
            labelText: Text,
            labelStyle: TextStyle(color: secondarycolor),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(color: secondarycolor,))),
      );
    });
  }
}
