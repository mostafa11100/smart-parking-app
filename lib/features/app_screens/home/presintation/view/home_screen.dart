import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/utils/widgets_gineral/custom_buttom.dart';
import 'package:parking/core/utils/widgets_gineral/search_widget_custom.dart';
import 'package:parking/features/app_screens/home/presintation/cubit/cubit/get_places_cubit.dart';
import 'package:parking/features/app_screens/home/presintation/view/widgets/list_odparking.dart';
import 'package:parking/features/app_screens/home/presintation/view/widgets/loading_widgets.dart';
import 'package:parking/features/app_screens/home/presintation/view/widgets/location_widget.dart';
import 'package:parking/features/app_screens/home/presintation/view/widgets/time_selcet_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  DateTimeRef arrivetime = DateTimeRef(DateTime.now());

  DateTimeRef exittime = DateTimeRef(DateTime.now());
  Countryref countryref = Countryref("egypt");
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetPlacesCubit()..getplaces(),
        ),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 80.h),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0.h, horizontal: 15.w),
              child: lctionandntfctionwdgt(context, countryref),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0.h, horizontal: 15.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  search(context),
                  SizedBox(
                    height: 18.h,
                  ),
                  selecttime(context, arrivetime, true),
                  SizedBox(
                    height: 15.h,
                  ),
                  selecttime(context, exittime, false),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                      height: 46.h,
                      width: MediaQuery.of(context).size.width,
                      child: CustomButtom(
                          ontap: () {
                            BlocProvider.of<GetPlacesCubit>(context).getplaces(
                                country: countryref.country,
                                starttime: arrivetime.dateTime,
                                endtime: exittime.dateTime);
                          },
                          text: "Find Parking",
                          context: context)),
                  SizedBox(
                    height: 14.h,
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: BlocBuilder<GetPlacesCubit, GetPlacesState>(
                      builder: (context, state) {
                        if (state is GetPlacesSuccess) {
                          return listofparking(context, state.placesentity);
                        }
                        if (state is GetPlacesFail) {
                          //error
                          return Text("Error ${state.error}");
                        } else {
                          //loading
                          return listofparkingloading();
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
