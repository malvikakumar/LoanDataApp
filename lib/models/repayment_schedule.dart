import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'repayment_schedule.g.dart';

@JsonSerializable()
class RepaymentSchedule extends Equatable  {
	@JsonKey(name: 'Date')
	final String date;
	@JsonKey(name: 'Amount')
	final int amount;

	RepaymentSchedule({this.date, this.amount});

	factory RepaymentSchedule.fromJson(Map<String, dynamic> json) => _$RepaymentScheduleFromJson(json);

	Map<String, dynamic> toJson() => _$RepaymentScheduleToJson(this);

	@override
	List<Object> get props => [
		this.date,
		this.amount
	];
}
