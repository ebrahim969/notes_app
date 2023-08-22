// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/constants/constant.dart';
import 'package:note_app/views/widgets/text_widget.dart';

class MyButtom extends StatelessWidget {
  const MyButtom({super.key ,required this.onTap,this.isLoading = false});
  
 final VoidCallback onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ,
      child: Container(
        height: 50,
        width: Get.width,
        decoration: BoxDecoration(
          color:const  Color.fromARGB(255, 176, 133, 70),
          boxShadow: [
           BoxShadow(
                    color:const Color.fromARGB(255, 176, 133, 70).withOpacity(.1),
                    spreadRadius:5,
                    blurRadius: 2,
                    offset:const Offset(1, 2)
                  )
          ]
        ),
        child: Center(child:
        isLoading ?
        const SizedBox(
          height: 25,
          width: 25,
           child: CircularProgressIndicator(
            color: kPrimaryColor,
                 ),
         ) 
         :textWidget(txt: "Add", fontsize: 17 , fontWeight: FontWeight.bold)),
      ),
    );
  }
}