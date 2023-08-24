import 'package:flutter/material.dart';

import '../../constants/constant.dart';
import '../../models/note_model.dart';
import 'colors_list_view.dart';

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