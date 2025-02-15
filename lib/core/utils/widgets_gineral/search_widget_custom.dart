import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/constants/colorapp.dart';
import 'package:parking/core/constants/textstyle.dart';

Widget search(context) {
  return Row(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width / 1.3,
        height: 45.h,
        child: TextField(
          decoration: InputDecoration(
            hintText: "search",
            suffixIcon: Icon(
              Icons.search_outlined,
              color: Colorapp.primarycolor,
            ),
            hintStyle:
                TextstyleConst.txtstyl16.copyWith(fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide:
                    BorderSide(color: Colorapp.primarycolor!, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide:
                    BorderSide(color: Colorapp.primarycolor!, width: 1)),
          ),
        ),
      ),
      const Spacer(),
      Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
            color: Colorapp.primarycolor,
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
            child: Icon(
          Icons.tune_outlined,
          size: 35,
          color: Colors.white,
        )),
      )
    ],
  );
}
