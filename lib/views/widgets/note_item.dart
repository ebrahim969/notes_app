import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/widgets/text_widget.dart';

import '../../constants/constant.dart';
import 'custom_dialog.dart';

class NoteItem extends StatefulWidget {
  const NoteItem({super.key, required this.notes});

  final NoteModel notes;

  @override
  State<NoteItem> createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => EditNoteView(
              notes: widget.notes,
            ));
      },
      onLongPress: () {
        isClicked = true;
        setState(() {});
        customDialog(
          context: context,
          desc: "You need delete note?",
          ok: (){
          widget.notes.delete();
          BlocProvider.of<NotesCubit>(context).fetchNotes();
          isClicked = false;
          setState(() {});
          },
          cancle: () {
          isClicked = false;
          setState(() {});
        },);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width:isClicked? 1.5:.5),
          borderRadius: BorderRadius.circular(16),
          color: Color(widget.notes.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(txt: widget.notes.title, color: kPrimaryColor, fontsize: 17, fontWeight: FontWeight.bold),
            const SizedBox(
              height: 10,
            ),
            textWidget(txt: widget.notes.subTitle, color: kPrimaryColor.withOpacity(.8), fontsize: 12),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  textWidget(
                      txt: widget.notes.date, color:  kPrimaryColor.withOpacity(.8), fontsize: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}