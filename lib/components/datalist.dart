import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:mytest/Providers/Sayinlist.dart';
import 'package:provider/provider.dart';

class DataList extends StatelessWidget {
  final String category_name;
  final String cat_item;
  final int money;
  final DateTime dateTime;
  final Icon itemicon;
  final bool isFinish;
  final int id;
  const DataList(
      {required String this.category_name,
      required String this.cat_item,
      required int this.money,
      required this.id,
      required this.isFinish,
      required DateTime this.dateTime,
      required this.itemicon});
  @override
  Widget build(BuildContext context) {
    final setDetailData = () {
      context.read<MoneyDataList>().setDetailId(id: id);
    };
    return Dismissible(
        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            context.read<MoneyDataList>().updateIsFinish(id: id);
          } else {
            context.read<MoneyDataList>().deletedata(id: id);
          }
          debugPrint('.............$direction $id.....................');
        },
        background: Container(
          color: isFinish ? Colors.green : Colors.indigoAccent,
          child: Row(
            children: [
              SizedBox(
                width: 50,
                child: isFinish
                    ? Icon(
                        Icons.remove_circle_outline_outlined,
                        size: 30,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.task_alt_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
              ),
              Text(
                "${isFinish ? 'UnDone' : 'Done'}",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
        secondaryBackground: Container(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 50,
                child: Icon(
                  Icons.delete_outline_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                'Delete',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
        key: GlobalKey(),
        child: GestureDetector(
          onTap: () {
            setDetailData();
            showBottomSheet(
                context: context,
                enableDrag: true,
                builder: (context) => SizedBox(
                      height: 500,
                      // child: ToDo_Details(),
                    ));
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
                            // Container(
                            //   margin: EdgeInsets.only(left: 8),
                            //   width: 20,
                            //   height: 20,
                            //   decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(25)),
                            // ),
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
                            Text(
                              money.toString(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
