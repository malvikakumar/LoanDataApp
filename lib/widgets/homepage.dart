import 'dart:async';

import 'package:LoanDataApp/models/loan1.dart';
import 'package:LoanDataApp/models/widgetModel.dart';
import 'package:LoanDataApp/repositories/repositories.dart';
import 'package:LoanDataApp/widgets/LoanPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  SchemaState createState() => SchemaState(schemaApiClient: new SchemaApiClient());
}

class SchemaState extends State<HomePage> {
  Future<Loan1> loan;
  final SchemaApiClient schemaApiClient;

  SchemaState({@required this.schemaApiClient}) : assert(schemaApiClient != null);

  @override
  void initState() {
    super.initState();
    loan = schemaApiClient.getRecords();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: loan,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var widgetModel = WidgetModel.fromLoan(snapshot.data);
          return LoanPage(widgetModel: widgetModel);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return CircularProgressIndicator();
      },
    );
  }
}
