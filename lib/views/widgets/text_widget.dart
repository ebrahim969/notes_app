import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textWidget({required String txt , double fontsize = 10 , FontWeight fontWeight = FontWeight.normal , Color color = Colors.white}){
  return Text(txt , style: GoogleFonts.poppins(fontSize: fontsize , fontWeight: fontWeight , color: color),textAlign: TextAlign.start, );
}