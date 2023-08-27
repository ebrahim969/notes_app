import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_note_color_list.dart';

import '../models/note_model.dart';
import 'widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.notes});
 
 final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Container(
        padding:const EdgeInsets.all(6),
        child: EditNoteColorList(
                  note:notes,
                ),
      ),
      body: EditNoteViewBody(notes: notes,),
    );
  }
}