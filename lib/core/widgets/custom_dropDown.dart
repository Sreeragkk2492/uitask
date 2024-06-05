import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/colors.dart';
import 'package:uitask/core/constants/country_code.dart';

class CustomDropdownwidget extends StatefulWidget {
   const CustomDropdownwidget({super.key}); 

  @override
  State<CustomDropdownwidget> createState() => _DropdownwidgetState();
}

class _DropdownwidgetState extends State<CustomDropdownwidget> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = list.first;
    return Container(
      width: 60.w,
      height: 48.h,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: secondarycolor),
              borderRadius: BorderRadius.circular(10.r))),
      child: DropdownButton(
        underline:const SizedBox(),
        iconEnabledColor: secondarycolor,
        isDense: true,
        isExpanded: true,
        elevation: 0,

        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 5.w),
        focusColor: Colors.transparent,
        value: dropdownvalue,
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(
                child: Text(
              value,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: headlinecolor),
            )),
          );
        }).toList(),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownvalue = value!;
          });
        },
      ),
    );
  }
}
