import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/core/constants/appcolors.dart';
import 'package:uitask/core/constants/strings.dart';
import 'package:uitask/screens/auth/controller/authcontroller.dart';
import 'package:uitask/screens/auth/signupwithotp/signupotp.dart';

import 'package:uitask/screens/auth/login/widgets/buttons.dart';
import 'package:uitask/screens/auth/login/widgets/loginscreenwidget.dart';
import 'package:uitask/screens/auth/login/widgets/passwordfield.dart';


class Welcomepage extends StatelessWidget {
final  Authcontroller controller = Get.put(Authcontroller());
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
                        image: AssetImage(kLoginsecondary), 
                        fit: BoxFit.cover)),
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
              child: Logintextfield(
                icons: Icons.person_outline,
                hinttext: 'Username',
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
              child: Passwordfield(
                Text: 'Password',
                sufficicon: true,
              )),
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
              child: Buttons(
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
                        Get.to(()=>SignupWithOtp());
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
                width: 82.64.w,
                height: 118.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(kLoginPrimary), 
                        fit: BoxFit.cover)),
              ))
        ],
      ),
    );
  }
}
