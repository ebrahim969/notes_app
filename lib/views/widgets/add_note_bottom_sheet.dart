import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text_feild.dart';
import 'my_buttom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(24),
      child:const SingleChildScrollView(
        child: FormValidate(),
      ),
    );
  }
}

class FormValidate extends StatefulWidget {
  const FormValidate({
    super.key,
  });

  @override
  State<FormValidate> createState() => _FormValidateState();
}

class _FormValidateState extends State<FormValidate> {

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