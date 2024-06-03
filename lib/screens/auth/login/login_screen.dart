import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/core/constants/colors.dart';
import 'package:uitask/core/constants/strings.dart';
import 'package:uitask/core/widgets/custom_passwordfield.dart';
import 'package:uitask/core/widgets/custom_textfield.dart';
import 'package:uitask/screens/auth/controller/auth_controller.dart';
import 'package:uitask/screens/auth/signupwithotp/signup_otp_screen.dart';

import 'package:uitask/screens/auth/login/widgets/login_screen_button.dart';


class LoginScreen extends StatelessWidget {
  final Authcontroller controller = Get.put(Authcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      // appBar: AppBar(backgroundColor: Appcolor.primarycolor,),
      body: Stack(
        children: [
          Positioned(
              top: 32,
              left: 305,
              child: Container(
                width: 93.32.w,
                height: 149.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(kLoginsecondary), fit: BoxFit.cover)),
              )),
          Positioned(
              top: 109,
              left: 30,
              child: Text(
                "Hello!",
                style: TextStyle(
                    fontSize: 44.sp,
                    fontWeight: FontWeight.w900,
                    color: secondarycolor),
              )),
          Positioned(
              top: 159,
              left: 30,
              child: Text(
                'Welcome Back :)',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
              )),
          Positioned(
              top: 181,
              left: 30,
              child: Text(
                'Please login to your account',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              )),
          Positioned(
              top: 235,
              left: 35,
              child: Text(
                'Username',
                style: TextStyle(color: headlinecolor),
              )),
          Positioned(
              top: 258,
              left: 20,
              right: 20,
              child: CustomTextfield(
                hintText: 'Username',
                prefixIcons: Icon(
                  Icons.person_outline,
                  color: secondarycolor,
                ),
              )),
          Positioned(
              top: 329,
              left: 35,
              child: Text(
                'Password',
                style: TextStyle(color: headlinecolor),
              )),
          Positioned(
              top: 352,
              left: 20,
              right: 20,
              child: Obx(() {
                return CustomPasswordfield(
                  prefixIcon: Icon(
                    Icons.shield_outlined,
                    color: secondarycolor,
                  ),
                  obscureText: !controller.isLoginPasswordvisible.value,
                  hintText: 'Password',
                  suffixbutton: IconButton(
                    onPressed: () {
                      controller.displaypassword();
                    },
                    icon: Icon(controller.isLoginPasswordvisible.value
                        ? Icons.visibility
                        : Icons.visibility_off),
                    color: secondarycolor,
                  ),
                );
              })),
          Positioned(
              top: 439,
              left: 219,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: secondarycolor),
                  ))),
          Positioned(
              top: 493,
              left: 28,
              child: LoginScreenButtons( 
                title: 'Login',
              )),
          Positioned(
              top: 662,
              left: 99,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: headlinecolor),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => SignupWithOtpScreen());
                      },
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )),
          Positioned(
              top: 668,
              left: -0.64,
              child: Container(
                width: 82.64.h,
                height: 118.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(kLoginPrimary), fit: BoxFit.cover)),
              ))
        ],
      ),
    );
  }
}
