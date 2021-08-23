import 'dart:convert';
import 'dart:async';

import 'package:LoanDataApp/models/loan1.dart';
import 'package:http/http.dart' as http;

class SchemaApiClient {
  static const baseUrl = 'https://ui-test-dot-indihood-dev-in.appspot.com';
  http.Client httpClient;

  SchemaApiClient() {
    httpClient = http.Client();
  }

  Future<dynamic> getSchema() async {
    final schemaUrl = '$baseUrl/schema';
    final schemaResponse = await this.httpClient.get(schemaUrl);
    if (schemaResponse.statusCode != 200) {
      throw Exception('oops...error getting schema');
    }

    final schemaJson = jsonDecode(schemaResponse.body);
    return schemaJson;
  }

  Future<Loan1> getRecords() async {
    final recordsUrl = '$baseUrl/records';
    final recordsResponse = await this.httpClient.get(recordsUrl);
    if (recordsResponse.statusCode != 200) {
      throw Exception('oops...error getting records');
    }

    final recordsJson = jsonDecode(recordsResponse.body);
    var list = new List();
    recordsJson.forEach((key, value) {
      list.add(value);
    });

    // return list[0];
    return Loan1.fromJson(list[0]);
  }
}
