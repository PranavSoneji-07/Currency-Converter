import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> FetchUsa() async{
  final url = Uri.https('v6.exchangerate-api.com', 'v6/36540c75dc2dbfd0599b22a0/latest/USD');
  var response = await http.get(url);
  final data = jsonDecode(response.body);
}

Future<void> FetchUnitedKingdom() async{
  final url = Uri.https('v6.exchangerate-api.com', 'v6/36540c75dc2dbfd0599b22a0/latest/GBP');
  var response = await http.get(url);
  final data = jsonDecode(response.body);

}

Future<void> FetchIndia() async{
  final url = Uri.https('v6.exchangerate-api.com', 'v6/36540c75dc2dbfd0599b22a0/latest/INR');
  var response = await http.get(url);
  final data = jsonDecode(response.body);

}

Future<void> FetchJapan() async{
  final url = Uri.https('v6.exchangerate-api.com', 'v6/36540c75dc2dbfd0599b22a0/latest/JPY');
  var response = await http.get(url);
  final data = jsonDecode(response.body);

}

Future<void> FetchSouthKorea() async{
  final url = Uri.https('v6.exchangerate-api.com', 'v6/36540c75dc2dbfd0599b22a0/latest/USD');
  var response = await http.get(url);
  final data = jsonDecode(response.body);

}
Future<void> FetchChina() async{
  final url = Uri.https('v6.exchangerate-api.com', 'v6/36540c75dc2dbfd0599b22a0/latest/CNY');
  var response = await http.get(url);
  final data = jsonDecode(response.body);

}
Future<void> FetchCanada() async{
  final url = Uri.https('v6.exchangerate-api.com', 'v6/36540c75dc2dbfd0599b22a0/latest/CAD');
  var response = await http.get(url);
  final data = jsonDecode(response.body);

}
Future<void> FetchUae() async{
  final url = Uri.https('v6.exchangerate-api.com', 'v6/36540c75dc2dbfd0599b22a0/latest/AED');
  var response = await http.get(url);
  final data = jsonDecode(response.body);
}

