import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:parking/app/routs/app_routs.dart';
import 'package:parking/core/constants/textstyle.dart';
import 'package:parking/features/app_screens/home/domain/entitys/place_popular.dart';

String im =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0chpsIOTHP-oZ3uyAbOwuDXpjGNdAXmGGxw&s";
String im2 =
    "https://firebasestorage.googleapis.com/v0/b/newproj-81e99.appspot.com/o/1710245071.jpg?alt=media&token=11041595-41db-4ccd-9d30-f2550f4c2e52";
List ll = [im, im2];

Widget listofparking(context, List<PopularPlaceEntity> places) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 5,
      ),
      Row(
        children: [
          Text(
            "Popular Places",
            style:
                TextstyleConst.txtstyl22.copyWith(fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Opacity(
            opacity: .6,
            child: InkWell(
              onTap: () {
                print(places.length);
                GoRouter.of(context)
                    .push(AppRouts.popularscreen, extra: places);
              },
              child: Text(
                "See All",
                style: TextstyleConst.txtstyl18.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 200.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: itemofparking(
                    context: context,
                    image: places[i].image,
                    parkname: places[i].name,
                    dist: "1.4km",
                    location: places[i].address,
                    entertime: places[i].arrivetime!,
                    exitetime: places[i].exitetime!),
              );
            }),
      ),
    ],
  );
}

Widget itemofparking(
    {required BuildContext context,
    image,
    parkname,
    location,
    dist,
    required DateTime entertime,
    required DateTime exitetime}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.8,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          // width: MediaQuery.of(context).size.width / 2.2,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 228, 228),
              borderRadius: BorderRadius.circular(8.r),
              image: DecorationImage(
                  image: NetworkImage(image[0]), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          parkname,
          style: TextstyleConst.txtstyl18.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 3.h,
        ),
        Opacity(
          opacity: .4,
          child: Text(
            location,
            style: TextstyleConst.txtstyl14,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Opacity(
          opacity: .9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.location_on,
                size: 16,
              ),
              Text(
                dist,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 13.r),
              ),
              SizedBox(
                width: 10.w,
              ),
              const Icon(
                Icons.timer_rounded,
                size: 16,
                //color: Colors.black,
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                "${entertime.hour.toString()} : ${entertime.minute.toString()}${entertime.hour > 12 ? "pm" : "am"}",
                style: TextstyleConst.txtstyl14,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "${exitetime.hour.toString()} : ${exitetime.minute.toString()}${entertime.hour > 12 ? "pm" : "am"}",
                style: TextstyleConst.txtstyl14,
              )
            ],
          ),
        )
      ],
    ),
  );
}
