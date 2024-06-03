import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/screens/auth/login/login_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411, 869), 
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false, 
          home: LoginScreen(),
        );
      },
    );
    
     
  }
}