import 'package:flutter/material.dart';
import 'package:currency/convertor.dart';



class HomeUI extends StatelessWidget {
  const HomeUI({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Currency Convertor", textAlign: TextAlign.center,
          style: TextStyle(fontSize: 35),
          ),
        ),
      body:
        Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("WELCOME TO CURRENCY CONVERTOR!", textAlign: TextAlign.center, style: TextStyle(fontSize: 50, color: Colors.teal),),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Convertor()),
                );
                },
                child: Text("Continue"),
              ),
            ],
          ),
        )

      ),
    );
  }
}