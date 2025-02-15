import 'package:cloud_firestore/cloud_firestore.dart';

class PopularPlaceEntity {
  List image = [];
  String? name;
  String? address;
  int? time;
  DateTime? arrivetime;

  DateTime? exitetime;

  GeoPoint? location;
  PopularPlaceEntity(this.name, this.address, this.location, this.image,
      this.time, this.arrivetime, this.exitetime);
}
