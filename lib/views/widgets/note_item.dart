import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/widgets/text_widget.dart';

import '../../constants/constant.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=> const EditNoteView());
      },
      child: Container(
        margin:const EdgeInsets.all(8),
        padding:const EdgeInsets.only(top: 12, bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:const Color(0xffFFCC80),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: textWidget(txt: "Flutter Tip", color: kMainColor, fontsize: 16),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: textWidget(txt: "Build your career with Ebrahim Elnemr", color:kOpacityColor, fontsize: 12),
              ),
              trailing:const Icon(FontAwesomeIcons.trash, color: kMainColor, size: 16,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: textWidget(txt: "May21, 2022", color: kOpacityColor, fontsize: 8),
            ),
          ],
        ),
      ),
    );
  }
}