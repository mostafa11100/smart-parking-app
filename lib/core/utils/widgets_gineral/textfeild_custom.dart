import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget TextFeildCustom({hint, icon, controller}) {
  return Builder(builder: (context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 1),
              borderRadius: BorderRadius.circular(8.r)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.surface, width: 1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          hintText: hint,
          hintStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Theme.of(context).colorScheme.surface),
          suffixIconColor: Theme.of(context).colorScheme.primary,
          suffixIcon: Icon(
            icon,
          )),
    );
  });
}
