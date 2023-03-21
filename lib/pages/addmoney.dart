import 'package:flutter/material.dart';

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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ), // ElevatedButton
      ),
    );
  }
}
