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
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextFeild(hinttext: "Title",),
            SizedBox(height: Get.height * 0.05,),
            const CustomTextFeild(hinttext: "Content", maxLines: 6,),
            SizedBox(height: Get.height * 0.07,),
            MyButtom(onTap: (){})
          ],
        ),
      ),
    );
  }
}