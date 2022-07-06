import 'package:json_annotation/json_annotation.dart';
part 'restaurant.g.dart';

@JsonSerializable()
class Restaurant {
  Restaurant(this.name, this.address, this.photo,this.kitchen,this.rating);

  String name;
  String address;
  String photo;
  String kitchen;
  int rating;

  factory Restaurant.fromJson(Map<String, dynamic> json) => _$RestaurantFromJson(json);
  //factory Restaurant.fromJson(List<dynamic> json) => _$RestaurantFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
  //List<Map<String, dynamic>> toJson() => _$RestaurantToJson(this);
}