import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mytest/Model/addmoney_datalist.dart';
import 'package:mytest/Providers/alllist.dart';

import 'package:mytest/components/datalist.dart';
import 'package:mytest/components/date.dart';
import 'package:mytest/components/header.dart';
import 'package:mytest/components/income_outcome.dart';
import 'package:mytest/components/sidebar.dart';
import 'package:mytest/pages/addmoney.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:mytest/components/footer.dart';
import 'package:mytest/components/showbalance.dart';
import 'package:mytest/components/header.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // List<Data> _data = List.generate(10, (index) {
  //   return Data(
  //       time: "Time $index", name: "Sayin $index", value: "Money $index");
  // });

  //footer data

  @override
  Widget build(BuildContext context) {
    final data = context.watch<MoneyDataLists>().datalist.reversed;
    return Scaffold(
      appBar: const HeaderHome(),
      body: Column(children: [
        // _______ Start Date  Section ______________________
        ShowDate(),
        // Start balance section
        // ShowBalance(),
        // End balance section
        //--------------- Start Income and Outcome Section ------
        Income_Outcome(),
        //----------- End Income and Outcome Section ------------
        // const SizedBox(height: 20.0),
        //------------ Start Task list Section -------------------
        Container(
            color: Color.fromARGB(255, 5, 227, 201),
            height: 358,
            padding: const EdgeInsets.all(10),
            // child: ListView.builder(
            //   itemCount: _data.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return ListTile(
            //       isThreeLine: true,
            //       leading: Icon(Icons.attach_money_rounded),
            //       title: Text(_data[index].time!),
            //       subtitle: Text(_data[index].name!),
            //       trailing: Text(_data[index].value!),
            //     );
            //   },
            // ),

            child: SingleChildScrollView(
                controller: ScrollController(),
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ...data
                        .map((e) => DataList(
                            category_name: e.category_name,
                            cat_item: e.cat_item,
                            money: e.money,
                            id: e.id,
                            isFinish: e.isFinish,
                            dateTime: e.dateTime,
                            itemcolor: e.itemcolor))
                        .toList()
                  ],
                ))),
      ]),

      // // ______ Start for footer ___________
      // bottomNavigationBar: Container(
      //   height: 60,
      //   decoration: const BoxDecoration(
      //     color: Color.fromARGB(77, 165, 165, 165),
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(20),
      //       topRight: Radius.circular(20),
      //     ),
      //   ),
      //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      //     IconButton(
      //       enableFeedback: false,
      //       onPressed: () {
      //         print("Home");
      //       },
      //       tooltip: "Home",
      //       icon: Icon(
      //         Icons.home,
      //         color: Color.fromARGB(255, 18, 17, 17),
      //         size: 35,
      //       ),
      //     ),
      //     IconButton(
      //       enableFeedback: false,
      //       onPressed: () {
      //         print("All sayin");
      //       },
      //       tooltip: "All Sayin",
      //       icon: Icon(
      //         Icons.view_list,
      //         color: Color.fromARGB(255, 0, 0, 0),
      //         size: 35,
      //       ),
      //     ),
      //     IconButton(
      //       enableFeedback: false,
      //       onPressed: () {
      //         Navigator.of(context).push(
      //             MaterialPageRoute(builder: (context) => const Addmoney()));
      //       },
      //       tooltip: "Account",
      //       icon: Icon(
      //         Icons.account_circle,
      //         color: Color.fromARGB(255, 16, 15, 15),
      //         size: 35,
      //       ),
      //     ),
      //   ]),
      // ),
      // // __________ End For Footer ________

      //Start for Footer
      bottomNavigationBar: const CustomFooter(),
      //End for Footer
      // ----------- Start for sidebar --------
      drawer: Sidebar(),
      // ------------ End for Sidebar --------
    );
  }
}

class Data {
  final String? time;
  final String? name;
  final String? value;
  Data({this.time, this.name, this.value});
}
