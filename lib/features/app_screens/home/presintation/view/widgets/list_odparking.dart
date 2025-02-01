import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String im =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0chpsIOTHP-oZ3uyAbOwuDXpjGNdAXmGGxw&s";
String im2 =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvKi8vKHtlgCwE0PT6mVFD7cCBKgseg3rNgw&s";
List ll = [im, im2];

Widget listofparking(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 200.h,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: itemofparking(
                context: context,
                image: ll[i],
                parkname: "Fututre",
                dist: "1.4km",
                location: "aga,elda",
                entertime: "8:33am",
                exitetime: "9:10am"),
          );
        }),
  );
}

Widget itemofparking(
    {required BuildContext context,
    image,
    parkname,
    location,
    dist,
    entertime,
    exitetime}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.8,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          // width: MediaQuery.of(context).size.width / 2.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          parkname,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 3.h,
        ),
        Opacity(
          opacity: .4,
          child: Text(
            location,
            style: Theme.of(context).textTheme.headlineSmall,
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
                entertime,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 13.r),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                exitetime,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 13.r),
              )
            ],
          ),
        )
      ],
    ),
  );
}
