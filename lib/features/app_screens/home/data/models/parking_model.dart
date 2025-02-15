import 'package:cloud_firestore/cloud_firestore.dart';

class ParkingModel {
  String? name;
  String? parkingtype;
  String? address;
  String? country;
  String? description;
  List images = [];
  int? cars;
  GeoPoint? location;
  Parkingowner? operatedby;
  int? price;
  int? review;
  int? time;

  DateTime? arrivetime;

  DateTime? exiettime;
  ParkingModel.fromjson(Map json) {
    name = json['name'] ?? "notfound";
    parkingtype = json['parkingtype'] ?? "notfound";

    address = json['address'] ?? "notfound";

    country = json['country'] ?? "notfound";

    description = json['description'] ?? "notfound";

    images = json['images'] ?? "notfound";

    cars = json['cars'] ?? 0;

    location = json['location'] ?? "notfound";

    // operatedby =
    //     Parkingowner.fromjson(json['operatedby'] ?? Parkingowner.fromjson({}));

    price = json['price'] ?? 0;

    review = json['review'] ?? 0;

    time = json['time'] ?? 0;

    arrivetime = json['timearrive'].toDate();

    exiettime = json['timeexite'].toDate();
  }
}

class Parkingowner {
  String? name;
  String? acount;
  String? image;
  Parkingowner(this.name, this.acount, this.image);
  Parkingowner.fromjson(Map<String, dynamic> json) {
    name = json['name'] ?? "";
    acount = json['acount'] ?? "";
    image = json['image'] ?? "";
  }
}
