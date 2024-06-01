import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitask/core/constants/appcolors.dart';

class Dropdownwidget extends StatefulWidget {
  @override
  State<Dropdownwidget> createState() => _DropdownwidgetState();
}

class _DropdownwidgetState extends State<Dropdownwidget> {
 final List<String> list = <String>['+91', '+1', '+63'];

  @override
  Widget build(BuildContext context) {
   String dropdownvalue = list.first;
    return Container(
      width: 77.w,
      height: 47.h,
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: secondarycolor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: secondarycolor)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: secondarycolor)),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: DropdownButton(
                iconEnabledColor: secondarycolor, 
                isDense: true,
                isExpanded: true,
                elevation: 0,
                padding: EdgeInsets.all(2),
                focusColor: Colors.transparent,
                // dropdownColor: Colors.transparent,
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
            )),
      ),
    );
  }
}
