import 'package:flutter/material.dart';
import 'package:uitask/view/widgets/utilities/appcolors.dart';

class Buttons extends StatelessWidget {
  String  title;
   Buttons({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 345,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Appcolor.secondarycolor),
        child: Center(child: Text(title,style: TextStyle(color: Appcolor.primarycolor),)));
  }
}
