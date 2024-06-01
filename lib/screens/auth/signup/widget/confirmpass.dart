import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/core/constants/appcolors.dart';
import 'package:uitask/screens/auth/controller/authcontroller.dart';

class Confirmpass extends StatelessWidget {
 final  controller = Get.put(Authcontroller());
 final String? Text;
  final bool sufficicon;
  Confirmpass({super.key, this.Text, this.sufficicon = true});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: 345.w,
        height: 48.h,
        child: TextField(
          obscuringCharacter: '*',
          cursorColor: headlinecolor,
          obscureText: !controller.isConfirmPassvisible.value,
          decoration: InputDecoration(
              hoverColor: secondarycolor,
              hintText: Text,
              hintStyle: TextStyle(color: secondarycolor),
              suffixIcon: sufficicon
                  ? IconButton(
                      onPressed: () {
                        controller.displayConfirmpassword();
                      },
                      icon: Icon(controller.isConfirmPassvisible.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined))
                  : null,
              enabled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: secondarycolor)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: secondarycolor,
              )),
              labelStyle: TextStyle(color: secondarycolor),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: secondarycolor,
              ))),
        ),
      );
    });
  }
}
