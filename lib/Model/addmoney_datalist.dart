import 'package:flutter/material.dart';

class DataCategory with ChangeNotifier {
  final int id;
  final String category_name;
  final String cat_item;
  final String money;
  final DateTime dateTime;
  final Color itemcolor;
  bool isFinish;
  DataCategory(
      {required this.id,
      required this.category_name,
      required this.cat_item,
      required this.money,
      required this.dateTime,
      required this.isFinish,
      required this.itemcolor});
  set setIsFinish(bool data) {
    isFinish = data;
  }
}
