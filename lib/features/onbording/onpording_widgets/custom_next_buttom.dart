import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CustomNextButtom(context, ontap) {
  return InkWell(
    onTap: ontap,
    borderRadius: BorderRadius.circular(20),
    child: Container(
      height: 60.w,
      width: 60.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Theme.of(context).colorScheme.primary),
      child: const Icon(
        Icons.arrow_right_alt_rounded,
        size: 30,
        color: Colors.white,
      ),
    ),
  );
}
