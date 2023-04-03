import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:mytest/Model/addmoney_datalist.dart';
import 'package:mytest/Model/transition.dart';
import 'package:mytest/Providers/alllist.dart';
import 'package:mytest/components/datalist.dart';
import 'package:provider/provider.dart';

class ShowBalance extends StatefulWidget {
  const ShowBalance({super.key});

  @override
  State<ShowBalance> createState() => _ShowBalanceState();
}

class _ShowBalanceState extends State<ShowBalance> {
  @override
  Widget build(BuildContext context) {
    var data = context.watch<MoneyDataLists>().datalist;
    // print(data[0].money);
    var totalincome = 0;
    var totaloutcome = 0;
    var totalmoney = 0;
    for (var income in data) {
      // print(income.money);
      if (income.category_name == "income") {
        totalincome += int.parse(income.money);
        // print(totalincome);
      }
      if (income.category_name == "outcome") {
        totaloutcome += int.parse(income.money);
        // print(totaloutcome);
      }
      totalmoney = totalincome - totaloutcome;
      // print(totalmoney);
    }
    return Container(
      color: const Color.fromARGB(255, 219, 235, 233),
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.all(10),
      constraints: const BoxConstraints(maxHeight: 70),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
              Text(totalincome.toString(),
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
              Text(totaloutcome.toString(),
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
              Text(totalmoney.toString(),
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
        ),
      ]),
    );
  }
}

// List<int> income = [100, 200, 300];
// List<int> outcome = [50, 75, 100];

// int totalIncome = income.fold(0, (previousValue, element) => previousValue + element);
// int totalOutcome = outcome.fold(0, (previousValue, element) => previousValue + element);
// int total = totalIncome - totalOutcome;

// print("Total income: $totalIncome");
// print("Total outcome: $totalOutcome");
// print("Total: $total");