import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../../constants/constant.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isClicked, required this.color});
 
 final bool isClicked;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return isClicked ? 
     Container(
      margin:const EdgeInsets.all(5),
       height: 70,
       width: 70,
       decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:color
       ),
       child:const Center(child: Icon(Icons.check),),
    )
     : Container(
      margin:const EdgeInsets.all(5),
       height: 70,
       width: 70,
       decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color
       ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex = 0;

  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index)
        {
          return  InkWell(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isClicked: currentIndex == index ,),
          );
        }),
    );
  }
}