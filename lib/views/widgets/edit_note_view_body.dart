import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: Get.height * 0.05,),
         const CustomAppBar(title: "Edit Note", icon: Icons.check,),
         SizedBox(height: Get.height * 0.03,),
          const CustomTextFeild(hinttext: "Title"),
          SizedBox(height: Get.height * 0.02,),
          const CustomTextFeild(hinttext: "Content", maxLines: 6,)
        ],
      ),
    );
  }
}