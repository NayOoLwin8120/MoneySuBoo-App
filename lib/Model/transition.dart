import 'package:flutter/material.dart';

class Moneycheck with ChangeNotifier {
  final String title;
  final double amount;

  Moneycheck({
    required this.title,
    required this.amount,
  });
}
