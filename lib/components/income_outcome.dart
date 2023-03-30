import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:mytest/pages/addincome.dart';
import 'package:mytest/pages/addmoney.dart';

class Income_Outcome extends StatelessWidget {
  const Income_Outcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 219, 235, 233),
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            height: 50,
            padding:
                const EdgeInsets.only(top: 1, right: 3, bottom: 5, left: 10),
            // color: Colors.red,
            // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
              color: Colors.amber[400],
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),

            child: Row(
              children: [
                Center(
                  child: (TextButton.icon(
                    icon: const Icon(Icons.add),
                    style: const ButtonStyle(),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Addmoney()));
                    },
                    label: const Text(
                      'Income',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )),
                ),
              ],
            ),
          ),
          Container(
            width: 150,
            height: 50,
            padding:
                const EdgeInsets.only(top: 1, right: 2, bottom: 5, left: 10),
            // color: Colors.red,
            decoration: BoxDecoration(
              color: Colors.amber[400],
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Row(
              children: [
                Center(
                  child: (TextButton.icon(
                    // style: const(),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Add_Data_Screen()));
                    },
                    label: const Text(
                      'Outcome',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    icon: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
