import 'dart:convert';
import 'package:http/http.dart';

class Fetch {
  static Future<void> fetchData(String currencyCode) async {
    final url = Uri.https(
        'v6.exchangerate-api.com',
        'v6/36540c75dc2dbfd0599b22a0/latest/$currencyCode');
    var response = await get(url);
    final data = jsonDecode(response.body);
  }

}





