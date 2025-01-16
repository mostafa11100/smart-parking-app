import 'package:flutter/material.dart';
import 'package:parking/core/constants/colorapp.dart';

Widget PagesCounter(double i) {
  int ind = i.toInt();
  return SizedBox(
    width: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
              color: ind == index ? Colorapp.primarycolor : Colorapp.greycolor,
              shape: BoxShape.circle),
          duration: const Duration(milliseconds: 500),
        );
      }),
    ),
  );
}
