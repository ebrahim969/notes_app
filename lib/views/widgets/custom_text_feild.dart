import 'package:flutter/material.dart';
import 'package:note_app/constants/constant.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hinttext,  this.maxLines = 1, this.onSaved, this.onCahnge});
  
  final String hinttext;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onCahnge;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value?.isEmpty ?? true){
          return "Field us required";
        }
        return null;
      },
      onChanged: onCahnge ,
      onSaved: onSaved,
      decoration: InputDecoration(
        border:buildBorder(), 
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