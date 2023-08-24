import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
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
        Get.to(()=>  EditNoteView(notes: notes,));
      },
      onDoubleTap: () {
        notes.delete();
        BlocProvider.of<NotesCubit>(context).fetchNotes();
      },
      child: Container(
        margin:const EdgeInsets.all(8),
        padding:const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(notes.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             textWidget(txt: notes.title, color: kMainColor, fontsize: 17),
            const SizedBox(height: 10,),
              textWidget(txt: notes.subTitle, color:kOpacityColor, fontsize: 12),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  textWidget(txt:notes.date, color: kOpacityColor, fontsize: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

