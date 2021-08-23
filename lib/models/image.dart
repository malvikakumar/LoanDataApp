import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'image.g.dart';

@JsonSerializable()
class Image extends Equatable  {
	@JsonKey(name: 'url')
	final String url;
	@JsonKey(name: 'label')
	final String label;

	Image({this.url, this.label});

	factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

	Map<String, dynamic> toJson() => _$ImageToJson(this);

	@override
	List<Object> get props => [
		this.url,
		this.label
	];
}
