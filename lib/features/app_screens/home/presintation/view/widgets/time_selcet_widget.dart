import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_to_time_picker/from_to_time_picker.dart';
import 'package:parking/core/constants/colorapp.dart';

Widget selecttime(context, text) {
  return InkWell(
    onTap: () {
      showd(context);
    },
    child: Container(
      padding: EdgeInsets.all(10.h),
      width: MediaQuery.of(context).size.width,
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colorapp.primary2color!),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Colorapp.primarycolor),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_drop_down_outlined,
            size: 25,
            color: Colorapp.primarycolor,
          )
        ],
      ),
    ),
  );
}

showd(context) {
  return showDialog(
    context: context,
    builder: (_) => FromToTimePicker(
      onTab: (from, to) {
        print('from $from to $to');
      },
      dialogBackgroundColor: Color(0xFF121212),
      fromHeadlineColor: Colors.white,
      toHeadlineColor: Colors.white,
      upIconColor: Colors.white,
      downIconColor: Colors.white,
      timeBoxColor: Color(0xFF1E1E1E),
      timeHintColor: Colors.grey,
      timeTextColor: Colors.white,
      dividerColor: Color(0xFF121212),
      doneTextColor: Colors.white,
      dismissTextColor: Colors.white,
      defaultDayNightColor: Color(0xFF1E1E1E),
      defaultDayNightTextColor: Colors.white,
      colonColor: Colors.white,
      showHeaderBullet: true,
      headerText: 'Time available from 01:00 AM to 11:00 PM',
    ),
  );
}
