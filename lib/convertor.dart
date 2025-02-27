import 'package:flutter/material.dart';

class Convertor extends StatefulWidget{
  const Convertor({super.key});

  @override
  State<Convertor> createState(){
    return _Currency();
  }
}

class _Currency extends State<Convertor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Currency Convertor", textAlign: TextAlign.center,),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
            )
          ],
        ),
      ),

    );
  }

}