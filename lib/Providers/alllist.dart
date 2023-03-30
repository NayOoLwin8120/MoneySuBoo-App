import 'package:flutter/material.dart';
import 'package:mytest/Model/addmoney_datalist.dart';

class MoneyDataLists with ChangeNotifier {
  List<DataCategory> datalist = [
    DataCategory(
        id: 1,
        category_name: "income",
        cat_item: "salary",
        money: "1200",
        dateTime: DateTime.now(),
        isFinish: false,
        itemcolor: Colors.green),
    DataCategory(
      id: 2,
      category_name: "outcome",
      cat_item: "Topup",
      money: "1000",
      dateTime: DateTime.now(),
      isFinish: false,
      itemcolor: Colors.green,
    ),
  ];
  int? detailid;

  // Add data
  void AddData({required DataCategory item}) {
    datalist.add(item);
    notifyListeners();
  }

  //Detail
  void setDetailId({required int id}) {
    detailid = id;
    notifyListeners();
  }

  List filterData() {
    return datalist.where((element) => element.id == detailid).toList();
  }

  //Update Data
  void updateToDoData({required id, required DataCategory data}) {
    datalist[datalist.indexWhere((element) => element.id == id)] = data;
    notifyListeners();
  }

  //Update Is Finish
  void updateIsFinish({required int id}) {
    datalist[datalist.indexWhere((element) => element.id == id)].isFinish =
        !datalist[datalist.indexWhere((element) => element.id == id)].isFinish;
    notifyListeners();
  }

  //delete Data
  void deletedata({required int id}) {
    datalist = datalist.where((element) => element.id != id).toList();
    notifyListeners();
  }
}
