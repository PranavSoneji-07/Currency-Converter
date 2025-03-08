import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class Fetch {
  dynamic data;
  Future<void> fetchData(String InputCountry) async {
    final url = Uri.https(
        'v6.exchangerate-api.com',
        'v6/36540c75dc2dbfd0599b22a0/latest/$InputCountry');
    var response = await get(url);
    data = jsonDecode(response.body);
    debugPrint("Data fetched of $InputCountry");
  }
  double dataMatch(String OutCountry) {
    if (data == null) {
      debugPrint("Data is null. Ensure fetchData() is called and awaited.");
      fetchData("INR");
      debugPrint("DataMatch");
    }

    var result = data["conversion_rates"][OutCountry];

    if (result == null) {
      debugPrint("Invalid currency code: $OutCountry");
      return 0.0; // Handle invalid currency OutCountry
    }

    debugPrint("Result = $result To Currency - $OutCountry");
    return double.tryParse(result.toStringAsFixed(4)) ?? 0.0; // Ensure conversion to double
  }



  double out(double input, String OutCountry){
    double result = dataMatch(OutCountry);
    debugPrint("Result  = $result & Input = $input To Currency = $OutCountry");
    return input*result;
  }

  double Complete(double input, String InputCountry, String OutCountry){
    if (data == null)
      {fetchData(InputCountry);
        dataMatch(OutCountry);
      }
    return out(input, OutCountry);
    }

  Future<double> InputChange(double input, String InputCountry, String OutCountry) async {
    await fetchData(InputCountry);
    return Complete(input, InputCountry, OutCountry);
  }




}





