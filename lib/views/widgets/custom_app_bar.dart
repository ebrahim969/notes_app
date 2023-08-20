import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/text_widget.dart';

import '../../constants/color_constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textWidget(txt: "Notes", fontsize: 28),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kPrimaryColor.withOpacity(0.05),
          ),
          child:const Icon(Icons.search, size: 30,),
        )
      ],
    );
  }
}