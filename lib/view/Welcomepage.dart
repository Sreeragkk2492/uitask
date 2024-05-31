import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitask/controller/passcontroller.dart';
import 'package:uitask/view/otp.dart';
import 'package:uitask/view/widgets/buttons.dart';
import 'package:uitask/view/widgets/loginscreenwidget.dart';
import 'package:uitask/view/widgets/passwordfield.dart';
import 'package:uitask/view/widgets/utilities/appcolors.dart';

class Welcomepage extends StatelessWidget {
  Passcontroller controller = Get.put(Passcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primarycolor,
      // appBar: AppBar(backgroundColor: Appcolor.primarycolor,),
      body: Stack(
        children: [
          Positioned(
              top: 32,
              left: 305,
              child: Container(
                width: 93.32,
                height: 149,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/img2.png'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: 109,
              left: 30,
              child: Text(
                "Hello!",
                style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w900,
                    color: Appcolor.secondarycolor),
              )),
          Positioned(
              top: 159,
              left: 30,
              child: Text(
                'Welcome Back :)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              )),
          Positioned(
              top: 181,
              left: 30,
              child: Text(
                'Please login to your account',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              )),
          Positioned(
              top: 235,
              left: 35,
              child: Text(
                'Username',
                style: TextStyle(color: Appcolor.headlinecolor),
              )),
          Positioned(
              top: 258,
              left: 20,
              right: 20,
              child: Logintextfield(
                icons: Icons.person_outline, 
                labeltext: 'Username',
              )),
          Positioned(
              top: 329,
              left: 35,
              child: Text(
                'Password',
                style: TextStyle(color: Appcolor.headlinecolor),
              )),
          Positioned(
              top: 352,
              left: 20,
              right: 20,
              child:Passwordfield(
                sufficicon: true,
              ) ),
          Positioned(
              top: 439,
              left: 219,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Appcolor.secondarycolor),
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
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Appcolor.headlinecolor),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Otppage()));
                      },
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )),
          Positioned(
              top: 668,
              left: -0.64,
              child: Container(
                width: 82.64,
                height: 118,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/img.jpg'),
                        fit: BoxFit.cover)),
              ))
        ],
      ),
    );
  }
}
