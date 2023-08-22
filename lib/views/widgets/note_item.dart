import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/widgets/text_widget.dart';

import '../../constants/constant.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});
  
 final NoteModel notes;
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
          color: Color(notes.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: textWidget(txt: notes.title, color: kMainColor, fontsize: 16),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: textWidget(txt: notes.subTitle, color:kOpacityColor, fontsize: 12),
              ),
              trailing:const Icon(FontAwesomeIcons.trash, color: kMainColor, size: 16,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: textWidget(txt:notes.date, color: kOpacityColor, fontsize: 8),
            ),
          ],
        ),
      ),
    );
  }
}