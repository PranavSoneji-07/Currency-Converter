import 'package:flutter/material.dart';
import 'package:currency/converter.dart';



class HomeUI extends StatelessWidget {
  const HomeUI({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(  title: Text('Currency Converter'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(135, 206, 235, 1), Color.fromRGBO(245, 239, 224, 1)], // Gradient colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
      body:
        Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("WELCOME TO CURRENCY CONVERTER!", textAlign: TextAlign.center, style: TextStyle(fontSize: 50, color: Color.fromRGBO(139, 69, 19, 1), fontWeight: FontWeight.bold),),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Converter()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.only(left:80, right: 80, top: 5, bottom: 5),
                  ),
                  child: Text("Continue", style: TextStyle(color: Colors.black, fontSize: 30)),
                ),
              ),
            ],
          ),
        )

      );
  }
}