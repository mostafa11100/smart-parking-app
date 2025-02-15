import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:parking/core/constants/colorapp.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({super.key, required this.controller});
  TabController controller;
  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  List<TabItem> items = [
    const TabItem(
      icon: Icons.home,
      title: 'Home',
    ),
    const TabItem(
      icon: Icons.location_city_outlined,
      title: 'location',
    ),
    const TabItem(
      icon: Icons.favorite_border,
      title: 'favourite',
    ),
    TabItem(
      icon: Icons.person,
      title: 'profile',
    ),
  ];
  int visit = 0;
  UniqueKey k = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return BottomBarDefault(
      items: items,
      iconSize: 24,
      indexSelected: visit,
      backgroundColor: const Color.fromARGB(255, 228, 240, 248),
      color: Colorapp.primarycolor!,
      colorSelected: Colorapp.primarycolor!,
      onTap: (int index) => setState(() {
        visit = index;

        widget.controller.animateTo(visit);
      }),
    );
  }
}
