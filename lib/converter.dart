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
    return Scaffold(
      appBar: AppBar( title: Text("Currency Converter", textAlign: TextAlign.center,),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.pink,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 90,
              margin: EdgeInsets.only(left: 25, right: 25, top: 150),
              color: Colors.green,

            )
          ],
        ),
      ),

    );
  }

}