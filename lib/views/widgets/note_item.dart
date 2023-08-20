import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/widgets/text_widget.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 16),
      padding:const EdgeInsets.only(top: 16, left: 8, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:const Color(0xffFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: textWidget(txt: "Flutter Tip", color: Colors.black, fontsize: 24),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: textWidget(txt: "Build your career with Ebrahim Elnemr", color: Colors.black.withOpacity(.5), fontsize: 16),
            ),
            trailing:const Icon(FontAwesomeIcons.trash, color: Colors.black, size: 20,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: textWidget(txt: "May21, 2022", color: Colors.black.withOpacity(.5), fontsize: 12),
          ),
        ],
      ),
    );
  }
}