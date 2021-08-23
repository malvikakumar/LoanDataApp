// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicantDetails _$ApplicantDetailsFromJson(Map<String, dynamic> json) {
  return ApplicantDetails(
    name: json['Name'] as String,
    dateOfBirth: json['Date of Birth'] as String,
    phoneNumber:
        (json['Phone Number'] as List)?.map((e) => e as String)?.toList(),
    maritalStatus: json['Marital Status'] as String,
    noOfDependents: json['No of Dependents'] as int,
  );
}

Map<String, dynamic> _$ApplicantDetailsToJson(ApplicantDetails instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Date of Birth': instance.dateOfBirth,
      'Phone Number': instance.phoneNumber,
      'Marital Status': instance.maritalStatus,
      'No of Dependents': instance.noOfDependents,
    };
