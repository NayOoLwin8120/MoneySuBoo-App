// import 'dart:convert';

import 'package:flutter/material.dart';
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
          child: Text("Add Money", style: TextStyle(color: Colors.amberAccent)),
        ),
      ),
      body: Column(
        children: [
          Image.network(
              "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=",
              loadingBuilder: (_, widget, progress) {
            // if (widget == null) return widget;
            if (progress == null) return widget;
            return CircularProgressIndicator(backgroundColor: Colors.amber);
            // return CircularProgressIndicator();
          }),
        ],
      ),
    );
  }
}
