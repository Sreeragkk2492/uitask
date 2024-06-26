import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/core/constants/colors.dart';
import 'package:uitask/core/constants/widgets.dart';
import 'package:uitask/core/widgets/custom_passwordfield.dart';
import 'package:uitask/core/widgets/custom_textfield.dart';
import 'package:uitask/screens/auth/controller/auth_controller.dart';

import 'package:uitask/screens/auth/signup/widget/label_text_widget.dart';

import 'package:uitask/screens/auth/signup/widget/signup_screen_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final Authcontroller controller = Get.put(Authcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 20.w, right: 20.w), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight20,
                Text(
                  'SignUp',
                  style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w700,
                      color: secondarycolor),
                ),
                kHeight20,
                LabelTextwidget(title: 'Full Name'),
                kHeight10,
              const  CustomTextfield(
                  hintText: 'Name',
                ),
                kHeight10,
                LabelTextwidget(title: 'Username'),
                kHeight10,
              const  CustomTextfield(
                  hintText: 'Username',
                ),
                kHeight10,
                LabelTextwidget(title: 'Phone number'),
                kHeight10,
              const  CustomTextfield(
                  hintText: 'Phonenumber',
                ),
                kHeight20,
                LabelTextwidget(title: 'Create password'),
                kHeight10,
                Obx(() {
                  return CustomPasswordfield(
                    hintText: 'Create password',
                    obscureText: !controller.isCreatePassvisible.value,
                    suffixbutton: IconButton(
                      onPressed: () {
                        controller.displayCratepassword();
                      },
                      icon: Icon(controller.isCreatePassvisible.value
                          ? Icons.visibility
                          : Icons.visibility_off),
                      color: secondarycolor,
                    ),
                  );
                }),
                kHeight10,
                LabelTextwidget(title: 'Confirm password'),
                kHeight10,
                Obx(() {
                  return CustomPasswordfield(
                    hintText: 'Confirm password',
                    obscureText: !controller.isConfirmPassvisible.value,
                    suffixbutton: IconButton(
                      onPressed: () {
                        controller.displayConfirmpassword();
                      },
                      icon: Icon(controller.isConfirmPassvisible.value
                          ? Icons.visibility
                          : Icons.visibility_off),
                      color: secondarycolor,
                    ),
                  );
                }),
                kHeight50,
               const SignUpScreenButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
