// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class Fetch {
  dynamic data;
  Future<void> fetchData(String currencyCode) async {
    final url = Uri.https(
        'v6.exchangerate-api.com',
        'v6/36540c75dc2dbfd0599b22a0/latest/$currencyCode');
    var response = await get(url);
    data = jsonDecode(response.body);
    debugPrint("Data fetched of $currencyCode");
  }
  double dataMatch(String code) {
    if (data == null) {
      debugPrint("Data is null. Ensure fetchData() is called and awaited.");
      fetchData("INR");
      debugPrint("DataMatch");
    }

    var result = data["conversion_rates"][code];

    if (result == null) {
      debugPrint("Invalid currency code: $code");
      return 0.0; // Handle invalid currency codes
    }

    debugPrint("Result = $result To Currency - $code");
    return double.tryParse(result.toStringAsFixed(4)) ?? 0.0; // Ensure conversion to double
  }



  double out(double input, String Code){
    double result = dataMatch(Code);
    debugPrint("Result  = $result & Input = $input To Currency = $Code");
    return input*result;
  }

  double Complete(double input, String currencyCode, String Code){
    if (data == "NULL")
      {fetchData(currencyCode);
        dataMatch("INR");
      }
    return out(input, Code);
    }






}





