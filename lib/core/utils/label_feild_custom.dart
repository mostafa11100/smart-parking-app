import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/utils/widgets_gineral/textfeild_custom.dart';

Widget LabelFeildCustom(title, hint, icon, controler) {
  return Builder(builder: (context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSecondary,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 50.h,
            child:
                TextFeildCustom(hint: hint, icon: icon, controller: controler))
      ],
    );
  });
}
