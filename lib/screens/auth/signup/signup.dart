import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/appcolors.dart';
import 'package:uitask/core/constants/widgets.dart';
import 'package:uitask/screens/auth/signup/widget/confirmpass.dart';
import 'package:uitask/screens/auth/signup/widget/labeltextwidget.dart';
import 'package:uitask/screens/auth/signup/widget/createpass.dart';
import 'package:uitask/screens/auth/signup/widget/signuppagebutton.dart';
import 'package:uitask/screens/auth/signup/widget/textfieldwidget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight50,
                Text(
                  'SignUp',
                  style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w700,
                      color: secondarycolor),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Labelwidget(title: 'Full Name'),
                kHeight10,
                SignUpTextfieldwidget(hintext: 'Name'),
                kHeight15,
                Labelwidget(title: 'Username'),
                kHeight10,
                SignUpTextfieldwidget(hintext: 'Username'),
                kHeight15,
                Labelwidget(title: 'Phone number'),
                kHeight10,
                SignUpTextfieldwidget(
                  hintext: 'Phone number',
                  keyboardtype: TextInputType.number,
                ),
                kHeight20,
                Labelwidget(title: 'Create password'),
                kHeight10,
                Createpass(
                  Text: 'Create password',
                ),
                kHeight15,
                Labelwidget(title: 'Confirm password'),
                kHeight10,
                Confirmpass(
                  Text: 'Confirm password',
                ),
                kHeight55,
                Signpagebutton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
