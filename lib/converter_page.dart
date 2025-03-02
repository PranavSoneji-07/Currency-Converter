import 'package:flutter/material.dart';
import 'package: fetch_input_country.dart';

class Converter extends StatefulWidget{
  const Converter({super.key});

  @override
  State<Converter> createState(){
    return _Currency();
  }
}

class _Currency extends State<Converter> {
  String selectedValue = "INR";
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
        padding: EdgeInsets.zero,
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
              margin: EdgeInsets.only(left: 25, right: 25, top: 180),
              color: Colors.green,
              child: Text("Input Amount", style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
            ),

            Row(
              children: [
                Container(
                  width: 145,
                  height: 130,
                  margin: EdgeInsets.only(left: 10, top: 30),
                  child: DropdownMenu(
                    textStyle: TextStyle(fontSize: 30,),
                    onSelected: (value) {
                      setState(() {
                        selectedValue = value.toString();
                      });
                    },
                    initialSelection: selectedValue,
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: "INR", label: "Indian ruppee"),
                      DropdownMenuEntry(value: "USD", label: "US Dollar"),
                      DropdownMenuEntry(value: "JYP", label: "Japanese Yen"),
                      DropdownMenuEntry(value: "AED", label: "UAE Dirham"),
                      DropdownMenuEntry(value: "GBP", label: "Pound Sterling"),
                      DropdownMenuEntry(value: "KRW", label: "South Korean Won"),
                      DropdownMenuEntry(value: "CNY", label: "Chinese Renminbi"),
                      DropdownMenuEntry(value: "CAD", label: "Canadian Dollar"),
                    ],
                    width: 145,
                  ),
                ),
                ElevatedButton.icon(onPressed: (){}, label: Text("Exchange")),
                Container(
                  width: 145,
                  height: 130,
                  margin: EdgeInsets.only(left: 0, top: 30),
                  color: Colors.amber,
                  child: Text("Output Currency", style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 90,
              margin: EdgeInsets.only(left: 25, right: 25, top: 30),
              color: Colors.purple,
              child: Text("Output Amount", style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),

    );
  }

}