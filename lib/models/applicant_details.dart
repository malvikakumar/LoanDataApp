import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'applicant_details.g.dart';

@JsonSerializable()
class ApplicantDetails extends Equatable {
  @JsonKey(name: 'Name')
  final String name;
  @JsonKey(name: 'Date of Birth')
  final String dateOfBirth;
  @JsonKey(name: 'Phone Number')
  final List<String> phoneNumber;
  @JsonKey(name: 'Marital Status')
  final String maritalStatus;
  @JsonKey(name: 'No of Dependents')
  final int noOfDependents;

  ApplicantDetails({this.name, this.dateOfBirth, this.phoneNumber, this.maritalStatus, this.noOfDependents});

  factory ApplicantDetails.fromJson(Map<String, dynamic> json) => _$ApplicantDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicantDetailsToJson(this);

  @override
  List<Object> get props => [this.name, this.dateOfBirth, this.phoneNumber, this.maritalStatus, this.noOfDependents];
}
