import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NoteGridView extends StatelessWidget {
  const NoteGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: 8,
      physics:const BouncingScrollPhysics(),
      gridDelegate:const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index)
    {
      return const NoteItem();
    });
  }
}