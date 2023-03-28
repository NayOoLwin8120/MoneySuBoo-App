// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mytest/components/date.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
// import 'flutter/src/painting/box_border.dart';
// import 'package:flutter/services.dart';

class Addmoney extends StatefulWidget {
  const Addmoney({super.key});

  @override
  State<Addmoney> createState() => _Addmoney();
}

class _Addmoney extends State<Addmoney> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  String info = "";
  //for Category
  List<bool> checked = [false, false, false, false, false, false, false];
  List<String> categories = [
    "အစားအေသာက်",
    "အ၀တ်အစား",
    "စုေငွ",
    "ဖုန်းေဘ",
    "လခ",
    "ဖုန်းေဘ",
    "ဖုန်းေဘ",
  ];
  //end for Category
  List<String> moneyselect = ['၀င် ေငွ', 'ထွက် ေငွ'];
  String selected = "income";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child:
                Text("Add Money", style: TextStyle(color: Colors.amberAccent)),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("အမျိုးအစားေရွးပါ"),
            Row(
              children: [
                Radio<String>(
                    value: moneyselect[0],
                    groupValue: selected,
                    onChanged: (val) {
                      setState(() {
                        selected = val!;
                      });
                    }),
                Text(moneyselect[0]),
                Radio<String>(
                    value: moneyselect[1],
                    groupValue: selected,
                    onChanged: (val) {
                      setState(() {
                        selected = val!;
                      });
                    }),
                Text(moneyselect[1]),
              ],
            ),
            // usernam
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: "Name",
                hintText: "Enter your username",
                suffixIcon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.red,
                ),
                // enabledBorder: const UnderlineInputBorder(
                //   borderSide: BorderSide(color: Color.fromARGB(255, 255, 7, 7)),
                // ),
              ),
              controller: name,
            ),

            SizedBox(height: 20),
            //age
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: "Age",
                hintText: "Enter your Age",
                suffixIcon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.red,
                ),
              ),
              controller: age,
            ),
            // Date input
            TextField(
                controller: dateinput, //editing controller of this TextField
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.date_range,
                    color: Colors.black,
                  ), //icon of text field
                  labelText: "Select Date", //label text of field
                  enabledBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 7, 7)),
                  ),
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    print(pickedDate);
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(formattedDate);
                    setState(() {
                      dateinput.text = formattedDate;
                    });
                  } else {
                    print("Date is not selected");
                  }
                }),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                // color: Colors.black,
                border: Border.all(
                  color: Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(12),
              ),

              // child: Column(
              //   children: [
              //     for (int i = 0; i < checked.length; i++)
              //       Categories(checked[i], categories[i], i),
              //   ],
              // ),
              child: Scrollbar(
                isAlwaysShown: true,
                thickness: 5, //width of scrollbar
                radius: Radius.circular(20), //corner radius of scrollbar
                scrollbarOrientation:
                    ScrollbarOrientation.right, //which side to show scrollbar
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      for (int i = 0; i < checked.length; i++)
                        Categories(checked[i], categories[i], i),
                    ],
                  ),
                ),
              ),
            ),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    info =
                        "User name = ${name.text}  Age=${age.text}  ${dateinput.text} \n Category = ${result()} \n Your choice is ${selected}";
                  });
                },
                child: Text("Save")),

            Text("Information - $info"),
          ],
        ));
  }

  Widget Categories(bool check, String categories, int index) {
    return Row(
      children: [
        Checkbox(
            value: check,
            onChanged: (val) {
              setState(() {
                checked[index] = val!;
                print(val);
              });
            }),
        Text(categories)
      ],
    );
  }

  String result() {
    String result = "";
    for (int i = 0; i < checked.length; i++)
      if (checked[i]) result += categories[i];
    return result;
  }
}
