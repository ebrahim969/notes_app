import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'colors_list_view.dart';
import 'custom_text_feild.dart';
import 'my_buttom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFeild(
            hinttext: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          CustomTextFeild(
            hinttext: "Content",
            maxLines: 6,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(
            height: Get.height * 0.03,),

           const ColorsListView(),
          
          SizedBox(
            height: Get.height * 0.05,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return MyButtom(
                      isLoading: state is AddNoteLoading ? true : false,
                      onTap: () {
                        var currentDate = DateTime.now();
                        var formatCurrentDate = DateFormat.yMd().format(currentDate);
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        NoteModel noteModel = NoteModel(
                            title: title!,
                            subTitle: subTitle!,
                            color: Colors.amber.value,
                            date: formatCurrentDate);
                        BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    });
            },
          )
        ],
      ),
    );
  }
}


