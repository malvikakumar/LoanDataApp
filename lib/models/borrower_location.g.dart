// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'borrower_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BorrowerLocation _$BorrowerLocationFromJson(Map<String, dynamic> json) {
  return BorrowerLocation(
    lat: (json['lat'] as num)?.toDouble(),
    lng: (json['lng'] as num)?.toDouble(),
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$BorrowerLocationToJson(BorrowerLocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'address': instance.address,
    };
