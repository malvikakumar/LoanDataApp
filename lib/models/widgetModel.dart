import 'loan1.dart';

// A calss that maps the given imput model to a widget model to be displayed on the screen
class WidgetModel {
  final String title;
  final String image;
  final String imageTitle;
  final String imageSubtitle;
  final List<dynamic> cards;

  const WidgetModel({this.title, this.image, this.imageTitle, this.imageSubtitle, this.cards});

  static WidgetModel fromLoan(Loan1 loan) {
    return WidgetModel(
      title: loan.title,
      image: loan.image.url,
      imageTitle: loan.image.label,
      imageSubtitle: loan.borrowerLocation.address,
      cards: _mapLoanToCards(loan),
    );
  }

  static List<dynamic> _mapLoanToCards(Loan1 loan) {
    List l = new List();
    l.add(new PageCard(title: "Applicant Details", elements: loan.applicantDetails.toJson()));
    l.add(new PageCard(title: "Loan Terms", elements: loan.loanTerms.toJson()));

    return l;
  }
}

class PageCard {
  final String title;
  final Map<String, dynamic> elements;

  const PageCard({
    this.title,
    this.elements,
  });
}
