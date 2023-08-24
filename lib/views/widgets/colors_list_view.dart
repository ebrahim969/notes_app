import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isClicked, required this.color});
 
 final bool isClicked;
 final MaterialColor color;
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

  List<MaterialColor> colors = 
  [
    Colors.amber,
    Colors.indigo,
    Colors.green,
    Colors.cyan,
    Colors.red
  ];
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