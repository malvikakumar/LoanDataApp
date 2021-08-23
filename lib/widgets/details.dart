import 'package:LoanDataApp/models/widgetModel.dart';
import 'package:flutter/material.dart';

import 'detailCard.dart';

class Details extends StatelessWidget {
  final WidgetModel widgetModel;
  Details({@required this.widgetModel}) : assert(widgetModel != null);

  @override
  Widget build(BuildContext context) {
    var cards = widgetModel.cards;
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Expanded(
            child: ListView(
              children: [for (PageCard card in cards) DetailsCard(card: card)],
            ),
          )
        ]),
      ),
    );
  }
}
