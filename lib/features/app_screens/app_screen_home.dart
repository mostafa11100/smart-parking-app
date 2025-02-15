import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parking/features/app_screens/favourit/presintation/view/favourite_screen.dart';
import 'package:parking/features/app_screens/home/presintation/view/home_screen.dart';
import 'package:parking/features/widgets_app/bottomabbBar.dart';

// ignore: must_be_immutable
class AppScreenHome extends StatefulWidget {
  const AppScreenHome({super.key});

  @override
  State<AppScreenHome> createState() => _AppScreenHomeState();
}

class _AppScreenHomeState extends State<AppScreenHome>
    with SingleTickerProviderStateMixin {
  TabController? tapcontroler;

  @override
  void initState() {
    tapcontroler = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
        controller: tapcontroler!,
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tapcontroler,
        children: [
          HomeScreen(),
          Container(
            color: Colors.blue,
          ),
          const FavouriteScreen(),
          Container(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
