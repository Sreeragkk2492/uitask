import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:uitask/controller/passcontroller.dart';
import 'package:uitask/view/widgets/utilities/appcolors.dart';

class Passwordfield extends StatelessWidget {
  //IconData?icons;
  // IconData?suffixicon;
  Callback? suffixbutton;
  String? Text;
  final bool sufficicon;
  Passwordfield(
      {super.key, this.Text, this.suffixbutton, this.sufficicon = true});
  Passcontroller controller = Get.put(Passcontroller());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextField(
        cursorColor: Appcolor.headlinecolor,
        obscureText: !controller.isPasswordvisible.value,
        decoration: InputDecoration(
            hintText: 'password',
            suffixIcon: sufficicon
                ? IconButton(
                    onPressed: () {
                      controller.displaypassword();
                    },
                    icon: Icon(controller.isPasswordvisible.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined))
                : null,
            enabled: true,
            enabledBorder: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(15), 
                borderSide: BorderSide(color: Appcolor.secondarycolor)),
            // disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Appcolor.secondarycolor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Appcolor.secondarycolor,)),
            prefixIcon: Icon(
              Icons.shield_outlined, 
              color: Appcolor.secondarycolor,
            ),
            labelText: Text,
            labelStyle: TextStyle(color: Appcolor.secondarycolor),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Appcolor.secondarycolor,))),
      );
    });
  }
}
