import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/constants/colorapp.dart';
import 'package:parking/core/utils/widgets_gineral/custom_buttom.dart';

String im =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvKi8vKHtlgCwE0PT6mVFD7cCBKgseg3rNgw&s";
String im2 =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0chpsIOTHP-oZ3uyAbOwuDXpjGNdAXmGGxw&s";
List<String> imgs = [im2, im, im2, im, im2, im2, im, im2, im2, im, im2];
int vv = -10;

class ParkingDetails extends StatelessWidget {
  const ParkingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Column(
                  children: [
                    prkngimge(context: context, img: im),
                    SizedBox(
                      height: 18.h - vv,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Car Parking",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              const Spacer(),
                              Icon(Icons.star,
                                  size: 20.r, color: Colorapp.primarycolor),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "4,8",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Opacity(
                                opacity: .7,
                                child: Text(
                                  "365fitrevocry",
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.h - vv,
                          ),
                          Text(
                            "Cinema Parking",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5.h - vv,
                          ),
                          Opacity(
                            opacity: .6,
                            child: Text(
                              "Resort street sofr marking",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 20.h - vv,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 18.r,
                              ),
                              Text(
                                "25 mint",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.car_crash_outlined,
                                size: 18.r,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "28 Sports",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h - vv,
                          ),
                          Text(
                            "Description",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 8.h - vv,
                          ),
                          Opacity(
                            opacity: .9,
                            child: Text(
                              '''Reloaded 1 of 827 libraries in 8,286ms 827 libraries in 8,286ms827 libraries in 8,286ms827 libraries in 8,286ms 827 libraries in 8,286ms827 libraries in 8,286ms  ''',
                              style: Theme.of(context).textTheme.labelLarge!,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: 20.h - vv,
                          ),
                          Text(
                            "Operated by",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(fontWeight: FontWeight.w800),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 5.h - vv,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: CircleAvatar(
                              backgroundColor: Colorapp.greycolor,
                              radius: 20.r,
                              backgroundImage: NetworkImage(im),
                            ),
                            title: Text(
                              "Mostafa",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            subtitle: Opacity(
                              opacity: .8,
                              child: Text(
                                "mo.com",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(bottom: 0.0, child: submitandval(context))
          ],
        ),
      ),
    );
  }
}

Widget prkngimge({context, img}) {
  return Container(
    padding: const EdgeInsets.only(top: 20, left: 17, right: 17, bottom: 10),
    width: MediaQuery.of(context).size.width,
    height: 230.h,
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
    child: Column(
      children: [
        const Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 28,
            ),
            Spacer(),
            Icon(Icons.search_outlined, size: 28, color: Colors.white),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.favorite_border, size: 28, color: Colors.white)
          ],
        ),
        const Spacer(),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: listofparksim(imgs)),
      ],
    ),
  );
}

Widget listofparksim(List<String> imgs) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imgs.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 65,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(imgs[i]), fit: BoxFit.cover))),
        );
      });
}

Widget submitandval(context) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width,
    //height: 60.h,
    color: const Color.fromARGB(255, 242, 249, 255),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Price",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "\$20.0 ",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          width: 110,
          height: 50,
          child: CustomButtom(ontap: () {}, context: context, text: "Submit"),
        )
      ],
    ),
  );
}
