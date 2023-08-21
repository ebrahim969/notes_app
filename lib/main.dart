import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants/const.dart';
import 'views/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home:const HomePage(),
    );
  }
}
