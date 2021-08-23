import 'package:LoanDataApp/models/widgetModel.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class LoanPage extends StatelessWidget {
  final WidgetModel widgetModel;
  LoanPage({@required this.widgetModel}) : assert(widgetModel != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(child: Text(widgetModel.title.toString())),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(widgetModel.image),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Details(widgetModel: widgetModel),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 80.0,
            left: 20,
            child: Row(
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.green),
                ),
                Container(
                  height: 100.0,
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: [
                      Text(
                        widgetModel.imageTitle,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        widgetModel.imageSubtitle,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
