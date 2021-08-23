// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Loan1 _$Loan1FromJson(Map<String, dynamic> json) {
  return Loan1(
    type: json['type'] as String,
    title: json['title'] as String,
    image: json['image'] == null
        ? null
        : Image.fromJson(json['image'] as Map<String, dynamic>),
    borrowerLocation: json['Borrower Location'] == null
        ? null
        : BorrowerLocation.fromJson(
            json['Borrower Location'] as Map<String, dynamic>),
    applicantDetails: json['Applicant Details'] == null
        ? null
        : ApplicantDetails.fromJson(
            json['Applicant Details'] as Map<String, dynamic>),
    loanTerms: json['Loan Terms'] == null
        ? null
        : LoanTerms.fromJson(json['Loan Terms'] as Map<String, dynamic>),
    repaymentSchedule: (json['Repayment Schedule'] as List)
        ?.map((e) => e == null
            ? null
            : RepaymentSchedule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Loan1ToJson(Loan1 instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'image': instance.image,
      'Borrower Location': instance.borrowerLocation,
      'Applicant Details': instance.applicantDetails,
      'Loan Terms': instance.loanTerms,
      'Repayment Schedule': instance.repaymentSchedule,
    };
