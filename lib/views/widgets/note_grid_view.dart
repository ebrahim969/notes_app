import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/note_item.dart';
import 'package:note_app/views/widgets/text_widget.dart';

class NoteGridView extends StatelessWidget {
  const NoteGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes?? [];
        return state is NotesImpety ?  
        Center(child: textWidget(txt: "No notes"),)
        : MasonryGridView.builder(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
            itemCount: notes.length,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return NoteItem(notes: notes[index],);
            });
      },
    );
  }
}
