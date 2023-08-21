import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text_feild.dart';
import 'my_buttom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
           CustomTextFeild(
            hinttext: "Title",
            onSaved: (value){
              title = value;
            },
            ),
          SizedBox(height: Get.height * 0.05,),
           CustomTextFeild(
            hinttext: "Content",
             maxLines: 6,
             onSaved: (value){
              subTitle = value;
            },
            ),
          SizedBox(height: Get.height * 0.07,),
          MyButtom(onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else
            {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }

          })
        ],
      ),
    );
  }
}