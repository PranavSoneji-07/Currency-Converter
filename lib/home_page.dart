import 'package:flutter/material.dart';
import 'package:currency/converter_page.dart';



class HomeUI extends StatelessWidget {
  const HomeUI({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(  title: Text('Currency Converter'),
        //   flexibleSpace: Container(
        //     decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //         colors: [Color.fromRGBO(135, 206, 235, 1), Color.fromRGBO(245, 239, 224, 1)], // Gradient colors
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //       ),
        //     ),
        //   ),
        // ),
      body:
        Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.zero,
          color: Colors.white,
          child: Center(
            child:Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/Globe.png", width: 300, height: 380,),
                Text("MoneyMate", textAlign: TextAlign.center, style: TextStyle(fontSize: 45, color: Color.fromRGBO(0,0,0,1), fontWeight: FontWeight.w900),),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(bottom: 60),
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.29),
                        blurRadius: 25,
                        spreadRadius: 2,
                        offset: Offset(0, 5),
                      ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Lighter shadow for fade effect
                          blurRadius: 35,
                          spreadRadius: 0,
                          offset: Offset(0, 10), // Extending shadow downward
                        ),

                      ]
                    ),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Converter()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.only(left:80, right: 80, top: 10, bottom: 10),
                      ),
                      child: Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 32)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )

      );
  }
}