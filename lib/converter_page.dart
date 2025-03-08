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
      appBar: AppBar(  title: Text('Converter', style: TextStyle(color: Colors.black), textAlign: TextAlign.center),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Amount", style: TextStyle(color: Colors.red),),
          Container(
            height: 80,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(250, 250, 250, 1),
              borderRadius: BorderRadius.circular(20)
            ),
            margin: EdgeInsets.only(left: 25, right: 25, top: 150),
            child:

            //Input
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter amount",
              ),
              onChanged: (value) async {
                setState(() {
                  if(value=="" || value == " "){
                    textval = 0;
                  }
                  else
                  {textval = double.parse(value);}
                  Output = fetch.out(textval, selectedValue1);
                });
              },
            ),
          ),



          // Dropdown Menus
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 5),
                margin: EdgeInsets.only(left: 10, bottom: 38, top: 90),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(89, 100, 236, 1),
                ),
                child:


                //Input Currency

                DropdownMenu(
                  textStyle: TextStyle(fontSize: 30, color: Colors.white),
                  onSelected: (value) {
                    selectedValue1 = value.toString();
                    fetch.fetchOut(selectedValue1);
                    setState(() {
                      Output = fetch.out(textval, selectedValue1);
                    });
                  },
                  initialSelection: selectedValue1,
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: "INR", label: "Indian ruppee"),
                    DropdownMenuEntry(value: "USD", label: "US Dollar"),
                    DropdownMenuEntry(value: "JPY", label: "Japanese Yen"),
                    DropdownMenuEntry(value: "AED", label: "UAE Dirham"),
                    DropdownMenuEntry(value: "GBP", label: "Pound Sterling"),
                    DropdownMenuEntry(value: "KRW", label: "South Korean Won"),
                    DropdownMenuEntry(value: "CNY", label: "Chinese Renminbi"),
                    DropdownMenuEntry(value: "CAD", label: "Canadian Dollar"),
                  ],
                  width: 150,
                  inputDecorationTheme: InputDecorationTheme(
                    outlineBorder: BorderSide.none,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 5),
                margin: EdgeInsets.only(left: 55, bottom: 38, top: 90),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(89, 100, 236, 1),
                ),
                child:


                //Output Currency




                DropdownMenu(
                textStyle: TextStyle(fontSize: 30, color: Colors.white,),
                onSelected: (value) {
                  selectedValue1 = value.toString();
                  fetch.fetchOut(selectedValue1);
                  setState(() {
                    Output = fetch.out(textval, selectedValue1);
                  });
                },
                initialSelection: selectedValue1,
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: "INR", label: "Indian ruppee"),
                  DropdownMenuEntry(value: "USD", label: "US Dollar"),
                  DropdownMenuEntry(value: "JPY", label: "Japanese Yen"),
                  DropdownMenuEntry(value: "AED", label: "UAE Dirham"),
                  DropdownMenuEntry(value: "GBP", label: "Pound Sterling"),
                  DropdownMenuEntry(value: "KRW", label: "South Korean Won"),
                  DropdownMenuEntry(value: "CNY", label: "Chinese Renminbi"),
                  DropdownMenuEntry(value: "CAD", label: "Canadian Dollar"),
                ],
                width: 150,
                  inputDecorationTheme: InputDecorationTheme(
                    outlineBorder: BorderSide.none,
                  ),
              ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color.fromRGBO(250, 250, 250, 1),
            ),
            width: double.infinity,
            height: 90,
            margin: EdgeInsets.only(left: 70, right: 70, top: 69),
            child: Center(child: Text(Output.toString(), style: TextStyle(fontSize: 40, color: Colors.black), textAlign: TextAlign.center,)),
          ),
        ],
      ),

    );
  }

}