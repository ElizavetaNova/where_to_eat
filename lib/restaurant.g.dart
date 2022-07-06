// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => Restaurant(
      json['name'] as String,
      json['address'] as String,
      json['photo'] as String,
      json['kitchen'] as String,
      json['rating'] as int,
    );

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'photo': instance.photo,
      'kitchen': instance.kitchen,
      'rating': instance.rating,
    };
