import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mytest/pages/addmoney.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Color.fromARGB(77, 165, 165, 165),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        IconButton(
          enableFeedback: false,
          onPressed: () {
            print("Home");
          },
          tooltip: "Home",
          icon: Icon(
            Icons.home,
            color: Color.fromARGB(255, 18, 17, 17),
            size: 35,
          ),
        ),
        IconButton(
          enableFeedback: false,
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Addmoney()));
          },
          tooltip: "All Sayin",
          icon: Icon(
            Icons.view_list,
            color: Color.fromARGB(255, 0, 0, 0),
            size: 35,
          ),
        ),
        IconButton(
          enableFeedback: false,
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Addmoney()));
          },
          tooltip: "Account",
          icon: const Icon(
            Icons.account_circle,
            color: Color.fromARGB(255, 16, 15, 15),
            size: 35,
          ),
        ),
      ]),
    );
    // __________ End For Footer ________
  }
}
