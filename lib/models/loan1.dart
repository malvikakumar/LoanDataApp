import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'image.dart';
import 'borrower_location.dart';
import 'applicant_details.dart';
import 'loan_terms.dart';
import 'repayment_schedule.dart';

part 'loan1.g.dart';

@JsonSerializable()
class Loan1 extends Equatable {
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'image')
  final Image image;
  @JsonKey(name: 'Borrower Location')
  final BorrowerLocation borrowerLocation;
  @JsonKey(name: 'Applicant Details')
  final ApplicantDetails applicantDetails;
  @JsonKey(name: 'Loan Terms')
  final LoanTerms loanTerms;
  @JsonKey(name: 'Repayment Schedule')
  final List<RepaymentSchedule> repaymentSchedule;

  Loan1({this.type, this.title, this.image, this.borrowerLocation, this.applicantDetails, this.loanTerms, this.repaymentSchedule});

  factory Loan1.fromJson(Map<String, dynamic> json) => _$Loan1FromJson(json);

  Map<String, dynamic> toJson() => _$Loan1ToJson(this);

  @override
  List<Object> get props => [this.type, this.title, this.image, this.borrowerLocation, this.applicantDetails, this.loanTerms, this.repaymentSchedule];
}
