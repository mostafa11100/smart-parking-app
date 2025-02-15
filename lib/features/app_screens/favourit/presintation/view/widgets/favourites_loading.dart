import 'package:flutter/material.dart';
import 'package:parking/core/utils/widgets_gineral/shimmer_loading.dart';

Widget favouriteloading() {
  return ListView.builder(itemBuilder: (context, i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ShimmerLoading.shimmercircle(h: 100, w: 100)),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ShimmerLoading.shimmercircle(h: 8, w: 150)),
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ShimmerLoading.shimmercircle(h: 8, w: 150)),
                const SizedBox(
                  height: 12,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ShimmerLoading.shimmercircle(h: 8, w: 130)),
                const SizedBox(
                  height: 12,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ShimmerLoading.shimmercircle(h: 8, w: 130)),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  });
}
