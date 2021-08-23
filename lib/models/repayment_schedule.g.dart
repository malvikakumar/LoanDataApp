// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repayment_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepaymentSchedule _$RepaymentScheduleFromJson(Map<String, dynamic> json) {
  return RepaymentSchedule(
    date: json['Date'] as String,
    amount: json['Amount'] as int,
  );
}

Map<String, dynamic> _$RepaymentScheduleToJson(RepaymentSchedule instance) =>
    <String, dynamic>{
      'Date': instance.date,
      'Amount': instance.amount,
    };
