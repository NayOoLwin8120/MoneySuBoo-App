import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:mytest/Providers/alllist.dart';
import 'package:mytest/pages/viewdetail.dart';

import 'package:provider/provider.dart';

class DataList extends StatelessWidget {
  final String category_name;
  final String cat_item;
  final String money;
  final DateTime dateTime;
  final Color itemcolor;
  final bool isFinish;
  final int id;
  const DataList(
      {required String this.category_name,
      required String this.cat_item,
      required String this.money,
      required this.id,
      required this.isFinish,
      required DateTime this.dateTime,
      required this.itemcolor});
  @override
  Widget build(BuildContext context) {
    final setDetailData = () {
      context.read<MoneyDataLists>().setDetailId(id: id);
    };
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 219, 235, 233),
          margin: const EdgeInsets.only(bottom: 2),
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(maxHeight: 70),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              // width: 150,
              margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),
              // color: Colors.red,
              child: Column(
                children: [
                  Text("Income",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 21,
                      )),
                  Text(money,
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              // width: 150,
              // margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),

              child: Column(
                children: [
                  Text("Outcome",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      )),
                  Text(money,
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
            Container(
              // width: 150,
              // margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),

              child: Column(
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                  Text(money,
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
          ]),
        ),
        GestureDetector(
          onTap: () {
            setDetailData();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Money_Details()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 12),
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1.0))),
            child: Row(
              children: [
                SizedBox(
                  width: 90,
                  child: Column(
                    children: [
                      Text(
                        "${DateFormat.MMM().format(dateTime)}-${dateTime.day}",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${dateTime.year}",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category_name,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              cat_item,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Container(
                          child: TextButton.icon(
                            onPressed: null,
                            icon: Icon(Icons.add),
                            label: Text(
                              money,
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
