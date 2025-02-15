class Usermodel {
  String? country;
  String? email;
  String? password;
  List<String>? favourits = [];
  String? image;
  int? vehiclenumber;
  Map jsonofuser = {};
  Usermodel.fromjson(Map json) {
    country = json['country'] ?? "";
    email = json['email'] ?? "";
    password = json['password'] ?? "";
    favourits = json['favourits'] ?? [];
    image = json['image'] ?? "";
    vehiclenumber = json["vehiclenumber"] ?? 0;
  }
  Usermodel.tojson(
      {this.country,
      this.email,
      this.password,
      this.favourits,
      this.image,
      this.vehiclenumber}) {
    jsonofuser['country'] = country;
    jsonofuser['email'] = email;
    jsonofuser['password'] = password;
    jsonofuser['image'] = image;
    jsonofuser['vehiclenumber'] = vehiclenumber;
  }
}
