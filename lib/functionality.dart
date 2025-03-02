import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class Fetch {
  var data,inti,result;
  Future<void> fetchData(String currencyCode) async {
    inti = currencyCode;
    final url = Uri.https(
        'v6.exchangerate-api.com',
        'v6/36540c75dc2dbfd0599b22a0/latest/$currencyCode');
    var response = await get(url);
    data = jsonDecode(response.body);
    debugPrint("Data Fetched");
  }
  void fetchOut(String code){
    var result = data["$code"];
    print(result);
  }

  double out(double intput){
    return intput*result;
  }





}





