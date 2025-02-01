import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/constants/colorapp.dart';

Widget search(context) {
  return Row(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width / 1.4,
        height: 55.h,
        child: TextField(
          decoration: InputDecoration(
            hintText: "search",
            suffixIcon: Icon(
              Icons.search_outlined,
              color: Colorapp.primarycolor,
            ),
            hintStyle:
                Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 16),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide:
                    BorderSide(color: Colorapp.primarycolor!, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide:
                    BorderSide(color: Colorapp.primarycolor!, width: 1)),
          ),
        ),
      ),
      const Spacer(),
      Container(
        width: 52.w,
        height: 52.h,
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
