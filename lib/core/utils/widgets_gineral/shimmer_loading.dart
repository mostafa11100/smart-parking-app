import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading {
  static Widget shimmercircle({
    required double h,
    required double w,
  }) {
    return SizedBox(
      width: w,
      height: h,
      child: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 218, 216, 216),
          highlightColor: const Color.fromARGB(255, 243, 241, 241),
          child: Container(
            color: Colors.white,
            height: h,
            width: w,
          )),
    );
  }
}
