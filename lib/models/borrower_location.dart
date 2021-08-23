import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'borrower_location.g.dart';

@JsonSerializable()
class BorrowerLocation extends Equatable  {
	@JsonKey(name: 'lat')
	final double lat;
	@JsonKey(name: 'lng')
	final double lng;
	@JsonKey(name: 'address')
	final String address;

	BorrowerLocation({this.lat, this.lng, this.address});

	factory BorrowerLocation.fromJson(Map<String, dynamic> json) => _$BorrowerLocationFromJson(json);

	Map<String, dynamic> toJson() => _$BorrowerLocationToJson(this);

	@override
	List<Object> get props => [
		this.lat,
		this.lng,
		this.address
	];
}
