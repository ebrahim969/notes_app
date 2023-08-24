import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/text_widget.dart';

import '../../constants/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onTap});
  
  final String title;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textWidget(txt: title, fontsize: 28),
        InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kPrimaryColor.withOpacity(0.05),
            ),
            child: Icon(icon, size: 30,),
          ),
        )
      ],
    );
  }
}