import 'package:flutter/material.dart';

class Converter extends StatefulWidget{
  const Converter({super.key});

  @override
  State<Converter> createState(){
    return _Currency();
  }
}

class _Currency extends State<Converter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(        appBar: AppBar(  title: Text('Currency Converter'),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(135, 206, 235, 1), Color.fromRGBO(245, 239, 224, 1)], // Gradient colors
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(135, 206, 235, 1), Color.fromRGBO(245, 239, 224, 1)], // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 90,
              margin: EdgeInsets.only(left: 25, right: 25, top: 200),
              color: Colors.green,

            )
          ],
        ),
      ),

    );
  }

}