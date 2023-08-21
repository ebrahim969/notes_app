import 'package:flutter/material.dart';

import '../constants/constant.dart';
import 'widgets/add_note_bottom_sheet.dart';
import 'widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
            ),
           context: context,
           builder: (context){
            return const AddNoteBottomSheet();
           });
        },
        backgroundColor: kOpacityColor,
        child:const Icon(Icons.add, color: kPrimaryColor,),
        ) ,
      body:const HomePageBody(),
    );
  }
}

