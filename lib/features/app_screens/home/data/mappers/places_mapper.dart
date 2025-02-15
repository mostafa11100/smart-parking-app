import 'package:parking/features/app_screens/home/data/models/parking_model.dart';
import 'package:parking/features/app_screens/home/domain/entitys/place_popular.dart';

extension PlacesMapper on ParkingModel {
  PopularPlaceEntity toplaceentity() => PopularPlaceEntity(
      name, address, location, images, time, arrivetime, exiettime);
}
