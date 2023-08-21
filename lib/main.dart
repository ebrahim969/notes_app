import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'constants/constant.dart';
import 'cubits/add_note_cubit/add_note_cubit.dart';
import 'models/note_model.dart';
import 'views/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main() async{
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark
        ),
        home:const HomePage(),
      ),
    );
  }
}
