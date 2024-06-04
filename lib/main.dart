import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uitask/core/view_models/reponsive.dart';
import 'package:uitask/routes/pages.dart';
import 'package:uitask/routes/routes.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
          Responsive.isMobile(context) ?const Size(340, 700) : const Size(455, 730), 
      builder: (context, child) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
        initialRoute: Routes.SPLASH, 
        getPages: GetPages.routes,
        );
      },
    );
  }
}
