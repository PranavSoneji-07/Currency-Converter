import 'package:flutter/material.dart';
import 'package:currency/home_page.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}



void main(){
  runApp(MyApp());
}