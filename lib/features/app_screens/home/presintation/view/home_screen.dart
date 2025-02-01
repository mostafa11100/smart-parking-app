import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/utils/widgets_gineral/custom_buttom.dart';
import 'package:parking/core/utils/widgets_gineral/search_widget_custom.dart';
import 'package:parking/features/app_screens/home/presintation/view/widgets/list_odparking.dart';
import 'package:parking/features/app_screens/home/presintation/view/widgets/location_widget.dart';
import 'package:parking/features/app_screens/home/presintation/view/widgets/time_selcet_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 15.w),
        child: Column(
          children: [
            lctionandntfctionwdgt(context),
            SizedBox(
              height: 20.h,
            ),
            search(context),
            SizedBox(
              height: 20.h,
            ),
            selecttime(context, "Arrive Before today 9:0"),
            SizedBox(
              height: 20.h,
            ),
            selecttime(context, "Exite Before today 9:0"),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
                height: 52.h,
                width: MediaQuery.of(context).size.width,
                child: CustomButtom(
                    ontap: () {}, text: "Find Parking", context: context)),
            SizedBox(
              height: 20.h,
            ),
            listofparking(context)
          ],
        ),
      ),
    );
  }
}
