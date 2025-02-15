import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/utils/widgets_gineral/shimmer_loading.dart';

Widget listofparkingloading() {
  return Builder(builder: (context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: ShimmerLoading.shimmercircle(
                          h: 120,
                          w: MediaQuery.of(context).size.width / 1.8,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: ShimmerLoading.shimmercircle(
                          h: 8,
                          w: MediaQuery.of(context).size.width / 2.2,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: ShimmerLoading.shimmercircle(
                          h: 8,
                          w: MediaQuery.of(context).size.width / 3,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: ShimmerLoading.shimmercircle(
                          h: 8,
                          w: MediaQuery.of(context).size.width / 2.2,
                        )),
                  ],
                ),
              ),
            );
          }),
    );
  });
}
