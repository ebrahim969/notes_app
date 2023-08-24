import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

import '../../models/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.notes});
 
 final NoteModel notes;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: Get.height * 0.05,),
          CustomAppBar(
          onTap: (){
            widget.notes.title = title ?? widget.notes.title;
            widget.notes.subTitle = subTitle ?? widget.notes.subTitle;
            widget.notes.save();
            BlocProvider.of<NotesCubit>(context).fetchNotes();
            Get.back();
          },
          title: "Edit Note",
           icon: Icons.check,),
         SizedBox(height: Get.height * 0.03,),
           CustomTextFeild(
            onCahnge: (value){
             title = value;
            },
            hinttext: widget.notes.title),
          SizedBox(height: Get.height * 0.02,),
           CustomTextFeild(
            onCahnge: (value){
             subTitle = value;
            },
            hinttext: widget.notes.subTitle, maxLines: 6,)
        ],
      ),
    );
  }
}