// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'functionality.dart';
import 'package:flutter/services.dart';


class Converter extends StatefulWidget{
  const Converter({super.key});

  @override
  State<Converter> createState(){
    return _Currency();
  }
}

class _Currency extends State<Converter> {
  String selectedValue = "INR";
  String selectedValue1 = "INR";
  var fetch = Fetch();
  double textval =0,Output = 0;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  title: Text('Converter', style: TextStyle(color: Colors.black, fontSize: 25), textAlign: TextAlign.center),
        flexibleSpace: Container(
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5, top: 25),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text("Amount", style: TextStyle(color: Colors.black, fontSize: 20), textAlign: TextAlign.left),
                ],
              ),
            ),
             //Input
              Container(
                height: 56,
                width: 361,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.5)),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter amount",
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                  ),
                  onChanged: (value)  async {
                      if(value=="" || value == " "){
                        textval = 0.0;
                      }
                      else
                      {textval = double.parse(value);}
                      var wait = fetch.Complete(textval, selectedValue, selectedValue1);
                      Output = await wait;
                      debugPrint("TextVal = $textval & Output = $Output");
                      setState(() {
                      });
                  },
                ),
              ),

            Container(
              margin: EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text("From Currency:", style: TextStyle(color: Colors.black, fontSize: 20), textAlign: TextAlign.left),
                ],
              ),
            ),
            // Dropdown Menus
            Row(
              children: [
                Container(
                  width: 368,
                  padding: EdgeInsets.only(left: 5),
                  margin: EdgeInsets.only(left: 20,top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.3)),
                      borderRadius: BorderRadius.circular(20)                  ),
                  child:
                  //Input Currency

                  DropdownMenu(
                    textStyle: TextStyle(fontSize: 20, color: Colors.black),
                    onSelected: (value) async {
                      selectedValue = value.toString();

                        Output = await fetch.InputChange(textval, selectedValue, selectedValue1);
                        debugPrint("Output $Output");

                        setState(() {

                        });

                    },
                    initialSelection: selectedValue,
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: "INR", label: "INR - Indian rupee"),
                      DropdownMenuEntry(value: "USD", label: "USD - US Dollar"),
                      DropdownMenuEntry(value: "JPY", label: "JPY - Japanese Yen"),
                      DropdownMenuEntry(value: "AED", label: "AED - UAE Dirham"),
                      DropdownMenuEntry(value: "GBP", label: "GBP - Pound Sterling"),
                      DropdownMenuEntry(value: "KRW", label: "KRW - South Korean Won"),
                      DropdownMenuEntry(value: "CNY", label: "CNY - Chinese Renminbi"),
                      DropdownMenuEntry(value: "CAD", label: "CAD - Canadian Dollar"),
                    ],
                    width: 368,
                    inputDecorationTheme: InputDecorationTheme(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 5, top: 10),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text("To Currency:", style: TextStyle(color: Colors.black, fontSize: 20), textAlign: TextAlign.left),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 368,
                  padding: EdgeInsets.only(left: 5),
                  margin: EdgeInsets.only(left: 20,top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.3)),
                      borderRadius: BorderRadius.circular(20)                  ),
                  child:
                  //Output Currency

                  DropdownMenu(
                    textStyle: TextStyle(fontSize: 20, color: Colors.black),
                    onSelected: (value) async {
                      selectedValue1 = value.toString();
                      fetch.dataMatch(selectedValue1);
                        Output = await fetch.out(textval, selectedValue1);

                        setState(() {

                        });
                    },
                    initialSelection: selectedValue1,
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: "INR", label: "INR - Indian rupee"),
                      DropdownMenuEntry(value: "USD", label: "USD - US Dollar"),
                      DropdownMenuEntry(value: "JPY", label: "JPY - Japanese Yen"),
                      DropdownMenuEntry(value: "AED", label: "AED - UAE Dirham"),
                      DropdownMenuEntry(value: "GBP", label: "GBP - Pound Sterling"),
                      DropdownMenuEntry(value: "KRW", label: "KRW - South Korean Won"),
                      DropdownMenuEntry(value: "CNY", label: "CNY - Chinese Renminbi"),
                      DropdownMenuEntry(value: "CAD", label: "CAD - Canadian Dollar"),
                    ],
                    width: 368,
                    inputDecorationTheme: InputDecorationTheme(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),




            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
              width: double.infinity,
              height: 90,
              margin: EdgeInsets.only(left: 20, right: 20, top: 69),
              child: Center(child: Text("Converted Amount: $Output", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
            ),
          ],
        ),
      ),

    );
  }

}