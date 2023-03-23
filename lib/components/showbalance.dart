import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ShowBalance extends StatelessWidget {
  const ShowBalance({super.key});

  @override
  Widget build(BuildContext context) {
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
            children: const [
              Text("Income",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 21,
                  )),
              Text("2000", style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          // width: 150,
          // margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),

          child: Column(
            children: const [
              Text("Outcome",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  )),
              Text("2000", style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
        ),
        Container(
          // width: 150,
          // margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),

          child: Column(
            children: const [
              Text("Total",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                  )),
              Text("20000",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
        ),
      ]),
    );
  }
}
