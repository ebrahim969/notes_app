import 'package:flutter/material.dart';
import 'package:note_app/constants/color_constant.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hinttext,  this.maxLines = 1});
  
  final String hinttext;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: buildBorder(kOpacityColor),
        focusedBorder: buildBorder(),
        hintText: hinttext,
      ),
      maxLines: maxLines,
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color:color?? kPrimaryColor)
      );
  }
}