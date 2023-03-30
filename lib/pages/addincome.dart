import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mytest/Model/addmoney_datalist.dart';
import 'package:mytest/Providers/alllist.dart';
import 'package:mytest/pages/category.dart';

import "dart:math";

import 'package:provider/provider.dart';

class Add_Data_Screen extends StatefulWidget {
  final String? category_name;
  final int? id;
  final String? money;
  final String? cate_item;
  final DateTime? dateTime;
  final Color? itemcolor;
  final bool? isFinish;
  Add_Data_Screen(
      {String? this.category_name,
      bool? this.isFinish,
      String? this.money,
      int? this.id,
      String? this.cate_item,
      DateTime? this.dateTime,
      Color? this.itemcolor});
  @override
  State<Add_Data_Screen> createState() => _Add_Data_ScreenState();
}

class _Add_Data_ScreenState extends State<Add_Data_Screen> {
  final List data = [
    Colors.red,
  ];
  final _formKey = GlobalKey<FormState>();
  DateTime datePick = DateTime.now();
  Color colorPick = Colors.green;
  final categoryController = TextEditingController();
  final moneycontroller = TextEditingController();
  final catitemController = TextEditingController();
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1990),
            lastDate: DateTime(2200))
        .then((value) => {
              setState(() {
                datePick = value!;
              })
            });
  }

  void _setColor(data) {
    setState(() {
      colorPick = data!;
    });
  }

  void _setData() {
    if (_formKey.currentState!.validate()) {
      final formData = DataCategory(
        id: widget.id ?? new Random().nextInt(100000),
        category_name: categoryController.text,
        cat_item: catitemController.text,
        money: moneycontroller.text,
        dateTime: datePick,
        isFinish: widget.isFinish ?? false,
        itemcolor: colorPick,
      );
      if (widget.id == null) {
        context.read<MoneyDataLists>().AddData(item: formData);
      } else {
        debugPrint('...............pass here ................');
        context
            .read<MoneyDataLists>()
            .updateToDoData(id: widget.id, data: formData);
      }
      Navigator.of(context).pop();
    }
  }

  @override
  void initState() {
    super.initState();
    categoryController.text = widget.category_name ?? "";
    moneycontroller.text = widget.money ?? "";
    datePick = widget.dateTime ?? DateTime.now();
    colorPick = widget.itemcolor ?? Colors.green;
    catitemController.text = widget.cate_item ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('${widget.id == null ? 'Add Money' : 'Update Data'} '),
          toolbarHeight: 80,
          actions: [
            Container(
                margin: EdgeInsets.only(right: 10, top: 26),
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Badge(
                    child: Icon(
                      Icons.notifications_active_outlined,
                      size: 30,
                    ),
                  ),
                )),
          ],
        ),
        body: Form(
          key: _formKey,
          child: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          top: BorderSide(width: 1.0, color: Colors.grey))),
                  child: TextFormField(
                    controller: categoryController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Need To Fill The Task Name !";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Income or Outcome",
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 20)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    controller: catitemController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Need To Fill The Description  !";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Categoryname",
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 20)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    controller: moneycontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Need To Fill The Category !";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      hintText: "Add Money",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                    ),
                  ),
                ),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom:
                                BorderSide(width: 1.0, color: Colors.grey))),
                    child: GestureDetector(
                      onTap: () {
                        _showDatePicker();
                      },
                      child: Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select Date',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey.shade600),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(datePick.toString().split(" ")[0])
                          ],
                        ),
                      ),
                    )),
                Container(
                  child: Text(
                    'Priority',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ...data
                              .map((e) => GestureDetector(
                                    onTap: () {
                                      _setColor(e);
                                    },
                                    child: Color_Card(data: e),
                                  ))
                              .toList(),
                        ],
                      ),
                      Column(
                        children: [
                          Color_Card(data: colorPick),
                          SizedBox(
                            height: 2,
                          ),
                          Text("Select Color"),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                ElevatedButton(
                    onPressed: () {
                      _setData();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigoAccent,
                        minimumSize: Size.fromHeight(50)),
                    child: Text(
                      ' ${widget.id == null ? 'Add Money' : 'Update Money'}',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    )),
              ],
            ),
          ),
        ));
  }
}
