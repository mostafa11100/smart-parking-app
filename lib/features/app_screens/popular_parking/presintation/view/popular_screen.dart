import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parking/core/constants/textstyle.dart';
import 'package:parking/features/app_screens/home/domain/entitys/place_popular.dart';
import 'package:parking/features/app_screens/popular_parking/presintation/view/popular_widgets/grid_ofparking.dart';

// ignore: must_be_immutable
class PopularScreen extends StatelessWidget {
  PopularScreen({super.key, required this.places});
  List<PopularPlaceEntity> places = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text("Popular Places",
            style:
                TextstyleConst.txtstyl22.copyWith(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: gridofparking(places),
        ),
      ),
    );
  }
}
