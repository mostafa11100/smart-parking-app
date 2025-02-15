import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/constants/colorapp.dart';
import 'package:parking/core/constants/textstyle.dart';
import 'package:time_picker_spinner/time_picker_spinner.dart';

class DateTimeRef {
  DateTime dateTime;
  DateTimeRef(this.dateTime);
}

Widget selecttime(context, DateTimeRef datatime, bool arive) {
  return StatefulBuilder(builder: (context, setState) {
    return InkWell(
      onTap: () {
        showd(context, datatime, setState);
      },
      child: Container(
        padding: EdgeInsets.all(10.h),
        width: MediaQuery.of(context).size.width,
        height: 46.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colorapp.primary2color!),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
                arive
                    ? calcdatetimearrive(datatime.dateTime)
                    : calcdatetimeexit(datatime.dateTime),
                style: TextstyleConst.txtstyl18
                    .copyWith(color: Colorapp.primarycolor)),
            const Spacer(),
            Icon(
              Icons.arrow_drop_down_outlined,
              size: 23,
              color: Colorapp.primarycolor,
            )
          ],
        ),
      ),
    );
  });
}

showd(context, DateTimeRef datetime, setState) {
  // DateTime datetime = DateTime.now();
  return showDialog(
      context: context,
      builder: (_) => Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 300.h,
              //  width: 200,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 249, 252),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(20),
              child: TimePickerSpinner(
                locale: const Locale('en', ''),
                time: datetime.dateTime,
                is24HourMode: false,
                isShowSeconds: true,
                itemHeight: 80,
                normalTextStyle: const TextStyle(
                  fontSize: 24,
                ),
                highlightedTextStyle:
                    const TextStyle(fontSize: 24, color: Colors.blue),
                isForce2Digits: true,
                onTimeChange: (time) {
                  setState(() {
                    datetime.dateTime = time;
                    print(datetime.dateTime.hour);
                  });
                },
              ),
            ),
          ));
}

String calcdatetimearrive(DateTime d) {
  return "Arrive Before today ${d.hour}:${d.minute}";
}

String calcdatetimeexit(DateTime d) {
  return "Exit Before   today  ${d.hour}:${d.minute}";
}
