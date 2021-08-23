// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_terms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoanTerms _$LoanTermsFromJson(Map<String, dynamic> json) {
  return LoanTerms(
    duration: json['Duration'] as String,
    interestRate: json['Interest Rate'] as String,
    loanAmount: json['Loan Amount'] as int,
    loanProduct: json['Loan Product'] as String,
  );
}

Map<String, dynamic> _$LoanTermsToJson(LoanTerms instance) => <String, dynamic>{
      'Duration': instance.duration,
      'Interest Rate': instance.interestRate,
      'Loan Amount': instance.loanAmount,
      'Loan Product': instance.loanProduct,
    };
