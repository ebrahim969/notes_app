import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_app_bar.dart';
import 'note_item.dart';


class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26),
      child: Column(
          children:[
            SizedBox(height: Get.height * 0.05,),
           const CustomAppBar(),
          const  NoteItem(),
          ],
      ),
    );
  }
}

