import 'package:flutter/material.dart';

class DataCategory with ChangeNotifier {
  final int id;
  final String category_name;
  final String cat_item;
  final int money;
  final DateTime dateTime;
  final Icon itemicon;
  bool isFinish;
  DataCategory(
      {required this.id,
      required this.category_name,
      required this.cat_item,
      required this.money,
      required this.dateTime,
      required this.isFinish,
      required this.itemicon});
  set setIsFinish(bool data) {
    isFinish = data;
  }
}
