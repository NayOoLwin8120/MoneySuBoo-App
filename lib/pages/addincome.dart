import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mytest/Model/addmoney_datalist.dart';
import 'package:mytest/Providers/alllist.dart';
import 'package:mytest/pages/category.dart';

import "dart:math";

import 'package:provider/provider.dart';

class Add_Data_Screen extends StatefulWidget {
  final String? category_name;
  final String? description;
  final int? id;
  final String? money;
  final String? cate_item;
  final DateTime? dateTime;
  final bool? isFinish;
  Add_Data_Screen({
    String? this.category_name,
    String? this.description,
    bool? this.isFinish,
    String? this.money,
    int? this.id,
    String? this.cate_item,
    DateTime? this.dateTime,
  });
  @override
  State<Add_Data_Screen> createState() => _Add_Data_ScreenState();
}

class _Add_Data_ScreenState extends State<Add_Data_Screen> {
  final List data = [
    Colors.red,
  ];
  List<String> moneyselect = ['income', 'outcome'];
  String selected = "income";

  final _formKey = GlobalKey<FormState>();
  DateTime datePick = DateTime.now();
  Color colorPick = Colors.green;
  final descriptioncontroller = TextEditingController();
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
        category_name: selected,
        cat_item: catitemController.text,
        money: moneycontroller.text,
        dateTime: datePick,
        isFinish: widget.isFinish ?? false,
        description: descriptioncontroller.text,
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
    selected = widget.category_name ?? "";
    moneycontroller.text = widget.money ?? "";
    datePick = widget.dateTime ?? DateTime.now();
    descriptioncontroller.text = widget.description ?? " no description ";
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
                Text("အမျိုးအစားေရွးပါ", style: TextStyle(fontSize: 16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio<String>(
                        value: moneyselect[0],
                        groupValue: selected,
                        onChanged: (val) {
                          setState(() {
                            selected = val!;
                          });
                        }),
                    Text(
                      moneyselect[0],
                      style: TextStyle(fontSize: 20),
                    ),
                    Radio<String>(
                        value: moneyselect[1],
                        groupValue: selected,
                        onChanged: (val) {
                          setState(() {
                            selected = val!;
                          });
                        }),
                    Text(moneyselect[1], style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(
                  height: 10,
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
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.category_outlined,
                        size: 30,
                        color: Colors.red,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      labelText: "Category name",
                      hintText: "Enter your category",
                      // hintText: "Categoryname",
                      // labelText: "Categoryname",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                      }
                      if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return 'Please enter numbers only';
                      }
                      if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
                        return 'Special characters are not allowed';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.attach_money_sharp,
                        size: 30,
                        color: Colors.red,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      labelText: "Money",
                      hintText: "Enter your Money",
                      // hintText: "Add Money",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          top: BorderSide(width: 1.0, color: Colors.grey))),
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 6,
                    controller: descriptioncontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Need To Fill Descritption";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Description",
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 20)),
                  ),
                ),
                SizedBox(
                  height: 50,
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
