import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/core/constants/colors.dart';
import 'package:uitask/core/constants/strings.dart';
import 'package:uitask/core/view_models/reponsive.dart';
import 'package:uitask/core/widgets/custom_passwordfield.dart';
import 'package:uitask/core/widgets/custom_textfield.dart';
import 'package:uitask/routes/routes.dart';
import 'package:uitask/screens/auth/controller/auth_controller.dart';
import 'package:uitask/screens/auth/login/widgets/login_screen_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(Authcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: Stack(
        children: [
          Positioned(
              top:3.h,
              left:Responsive.isMobile(context)? 270.w:400.w,
              child: Container(
                width: 93.32.w,
                height: 149.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(kLoginsecondary), fit: BoxFit.cover)),
              )),
          Positioned(
              top: 109.h,
              left: 30.w,
              child: Text(
                "Hello!",
                style: TextStyle(
                    fontSize: 44.sp,
                    fontWeight: FontWeight.w900,
                    color: secondarycolor),
              )),
          Positioned(
              top: 165.h,
              left: 30.w,
              child: Text(
                'Welcome Back :)',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
              )),
          Positioned(
              top: 189.h,
              left: 30.w,
              child: Text(
                'Please login to your account',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              )),
          Positioned(
              top: 235.h,
              left: 35.w,
              child: Text(
                'Username',
                style: TextStyle(color: headlinecolor),
              )),
          Positioned(
              top: 258.h,
              left: 20.w,
              right: 20.w,
              child: CustomTextfield(
                hintText: 'Username',
                prefixIcons: Icon(
                  Icons.person_outline,
                  color: secondarycolor,
                ),
              )),
          Positioned(
              top: 329.h,
              left: 35.w,
              child: Text(
                'Password',
                style: TextStyle(color: headlinecolor),
              )),
          Positioned(
              top: 352.h,
              left: 20.w,
              right: 20.w,
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
              top: 439.h,
              left: 208.w,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: secondarycolor),
                  ))),
          Positioned(
              top: 493.h,
              left:10.w,  
              child:const LoginScreenButtons(
                title: 'Login',
              )),
          Positioned(
              top: 632.h,
              left: 95.w,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: headlinecolor),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.OTPSCREEN);
                      },
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )),
          Positioned(
              top: 618.h,
              left: -0.60.w,
              child: Container(
                width: 82.64.h,
                height: 118.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(kLoginPrimary), fit: BoxFit.cover)),
              ))
        ],
      ),
    );
  }
}
