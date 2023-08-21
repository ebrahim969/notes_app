import 'package:flutter/material.dart';
import 'add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(24),
      child:const SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

