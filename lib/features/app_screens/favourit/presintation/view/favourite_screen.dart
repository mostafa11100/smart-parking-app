import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/constants/colorapp.dart';
import 'package:parking/core/constants/textstyle.dart';
import 'package:parking/core/utils/widgets_gineral/search_widget_custom.dart';
import 'package:parking/features/app_screens/favourit/presintation/view/widgets/favourites_loading.dart';

String im =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0chpsIOTHP-oZ3uyAbOwuDXpjGNdAXmGGxw&s";

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Text("Favourite Parkgin Spot",
              style: TextstyleConst.txtstyl22
                  .copyWith(fontWeight: FontWeight.w600)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                search(context),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: favouriteloading(),
                )),
              ],
            ),
          ),
        ));
  }
}

Widget itemsoffavourite(context) {
  return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Container(
            height: 140.h,
            width: MediaQuery.of(context).size.width - (50.w),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colorapp.primarycolor!, width: 1.7)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.width / 3.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        image: DecorationImage(
                            image: NetworkImage(im), fit: BoxFit.cover)),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "parkname",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 19,
                              backgroundColor: Colorapp.primarycolor,
                              child: const Icon(Icons.favorite_border_outlined),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Opacity(
                          opacity: .4,
                          child: Text(
                            "location",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
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
                                "1.4km",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.r),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              const Icon(
                                Icons.timer_rounded,
                                size: 16,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "12:4am",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.r),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                "12:4pm",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.r),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
