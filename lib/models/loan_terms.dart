import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'loan_terms.g.dart';

@JsonSerializable()
class LoanTerms extends Equatable  {
	@JsonKey(name: 'Duration')
	final String duration;
	@JsonKey(name: 'Interest Rate')
	final String interestRate;
	@JsonKey(name: 'Loan Amount')
	final int loanAmount;
	@JsonKey(name: 'Loan Product')
	final String loanProduct;

	LoanTerms({this.duration, this.interestRate, this.loanAmount, this.loanProduct});

	factory LoanTerms.fromJson(Map<String, dynamic> json) => _$LoanTermsFromJson(json);

	Map<String, dynamic> toJson() => _$LoanTermsToJson(this);

	@override
	List<Object> get props => [
		this.duration,
		this.interestRate,
		this.loanAmount,
		this.loanProduct
	];
}
