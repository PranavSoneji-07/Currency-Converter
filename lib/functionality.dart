import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class Fetch {
  dynamic data;
  Future<void> fetchData(String inputCountry) async {
    final url = await Uri.https(
        'v6.exchangerate-api.com',
        'v6/36540c75dc2dbfd0599b22a0/latest/$inputCountry');
    var response = await get(url);
    data = jsonDecode(response.body);
    debugPrint("Data fetched of $inputCountry");
  }
  Future<double> dataMatch(String outCountry) async {
    if (data == null) {
      debugPrint("Data is null. Ensure fetchData() is called and awaited.");
      await fetchData("INR");
      debugPrint("DataMatch");
    }

    var result = data["conversion_rates"][outCountry];

    if (result == null) {
      debugPrint("Invalid currency code: $outCountry");
      return 0.0;
    }

    debugPrint("Result = $result To Currency - $outCountry");
    double outp = double.parse(result.toStringAsFixed(4));
    return outp;
  }



  Future<double> out(double input, String outCountry) async {
    double result = await dataMatch(outCountry);
    debugPrint("Result  = $result & Input = $input To Currency = $outCountry");
    return input*result;
  }

  Future<double> Complete(double input, String inputCountry, String outCountry) async {
    if (data == null)
      {await fetchData(inputCountry);
        await dataMatch(outCountry);
      }
    return out(input, outCountry);
    }

  Future<double> InputChange(double input, String inputCountry, String outCountry) async {
    await fetchData(inputCountry);
    return await Complete(input, inputCountry, outCountry);
  }




}





