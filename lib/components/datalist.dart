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
  final String description;
  final bool isFinish;
  final int id;
  const DataList(
      {required String this.category_name,
      required String this.cat_item,
      required String this.money,
      required this.id,
      required this.isFinish,
      required DateTime this.dateTime,
      required String this.description});
  @override
  Widget build(BuildContext context) {
    final setDetailData = () {
      context.read<MoneyDataLists>().setDetailId(id: id);
    };
    var iicon = category_name == "income" ? Icons.add : Icons.remove;
    return Column(
      children: [
        Scrollbar(
          isAlwaysShown: true,
          // thumbVisibility: true,
          // scrollbarOrientation: ScrollbarOrientation.right,
          thickness: 30.0,
          radius: Radius.circular(20),
          child: GestureDetector(
            onDoubleTap: () {
              setDetailData();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Money_Details()));
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
                                cat_item,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Container(
                            child: TextButton.icon(
                              onPressed: null,
                              icon: Icon(
                                iicon,
                                color: category_name == "income"
                                    ? Colors.green
                                    : Colors.red,
                              ),
                              label: Text(
                                money,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: category_name == "income"
                                      ? Colors.green
                                      : Colors.red,
                                ),
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
        ),
      ],
    );
  }
}
