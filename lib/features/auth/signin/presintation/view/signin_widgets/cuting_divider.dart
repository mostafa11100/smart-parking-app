import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/constants/colorapp.dart';

Widget CuttingDivder(count) {
  return Row(
    children: List.generate(count, (i) {
      return Padding(
        padding: EdgeInsets.all(3.0.w),
        child: Container(
          color: Colors.blue,
          height: 2.6.h,
          width: 5.w,
        ),
      );
    }),
  );
}
