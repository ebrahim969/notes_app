import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

import '../../constants/constant.dart';
import '../../models/note_model.dart';
import 'colors_list_view.dart';

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
            hinttext: widget.notes.subTitle, maxLines: 6,),
            SizedBox(height: Get.height * 0.03,),
             EditNoteColorList(note:widget.notes ,),
        ],
      ),
    );
  }
}

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
 
 final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {

 late int currentIndex;

  @override
  void initState() {
    currentIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index)
        {
          return  InkWell(
            onTap: () {
              currentIndex = index;
              widget.note.color = colors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isClicked: currentIndex == index ,),
          );
        }),
    );
  }
}