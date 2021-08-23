import 'package:LoanDataApp/models/widgetModel.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final PageCard card;
  DetailsCard({@required this.card}) : assert(card != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            height: 10,
          ),
          Text(
            card.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          for (var item in card.elements.keys) Text('$item: ${card.elements[item]}'),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
