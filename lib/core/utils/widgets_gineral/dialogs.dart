import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:parking/core/constants/textstyle.dart';

class DialogsWidgets {
  static loadingdialog(context) {
    showDialog(
        barrierDismissible: false,
        useRootNavigator: false,
        context: context,
        builder: (context) {
          return const Center(
            child: SizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator(color: Colors.white),
            ),
          );
        });
  }

  static infodialo(
    context, {
    DialogType? type,
    title,
    desc,
    on1,
    on2,
  }) {
    AwesomeDialog(
      dialogBackgroundColor: Colors.white,
      titleTextStyle: TextstyleConst.txtstyl22
          .copyWith(fontWeight: FontWeight.w600, color: Colors.red),
      context: context,
      dialogType: type!,
      animType: AnimType.rightSlide,
      title: title ?? 'Dialog Title',
      desc: desc ?? 'Dialog description here.............',
      btnCancelOnPress: on1,
      btnOkOnPress: on2,
    ).show();
  }
}
