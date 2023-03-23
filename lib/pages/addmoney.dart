// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// import 'package:flutter/services.dart';

class Addmoney extends StatefulWidget {
  const Addmoney({super.key});

  @override
  State<Addmoney> createState() => _Addmoney();
}

class _Addmoney extends State<Addmoney> {
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
          children: [],
        ));
  }
}
