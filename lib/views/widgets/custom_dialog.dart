import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void customDialog(
    {required BuildContext context,
    String? title,
    required String desc,
    Function()? cancle,
    required Function()? ok}) {
  AwesomeDialog(
          context: context,
          dialogType: DialogType.warning,
          headerAnimationLoop: false,
          animType: AnimType.bottomSlide,
          desc: desc,
          buttonsTextStyle: const TextStyle(color: Colors.white),
          showCloseIcon: true,
          btnCancelOnPress: cancle,
          btnOkOnPress: ok)
      .show();
}
