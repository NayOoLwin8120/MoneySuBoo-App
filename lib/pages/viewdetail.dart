import 'package:flutter/material.dart';
import 'package:mytest/Providers/alllist.dart';
import 'package:mytest/pages/addincome.dart';
import 'package:mytest/pages/home.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class Money_Details extends StatefulWidget {
  const Money_Details({Key? key}) : super(key: key);
  @override
  State<Money_Details> createState() => _Money_DetailsState();
}

class _Money_DetailsState extends State<Money_Details> {
  @override
  Widget build(BuildContext context) {
    final data = context.watch<MoneyDataLists>().filterData()[0];
    // print(data.id);
    return Scaffold(
      appBar:
          AppBar(title: Text("${data.cat_item}"), leadingWidth: 56, actions: [
        // IconButton(
        //     onPressed: () {
        //       Navigator.of(context).push(
        //         MaterialPageRoute(
        //           builder: (context) => Add_Data_Screen(
        //             id: data.id,
        //             category_name: data.category_name,
        //             cate_item: data.cat_item,
        //             money: data.money,
        //             dateTime: data.dateTime,
        //             description: data.description,
        //             isFinish: data.isFinish,
        //           ),
        //         ),
        //       );
        //     },
        //     icon: Icon(Icons.edit_document)),
        IconButton(
            onPressed: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor: Colors.white70,
                  title: const Text(
                    'Are You Sure To Delete!',
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.italic)),
                    ),
                    TextButton(
                      onPressed: () => {
                        context.read<MoneyDataLists>().deletedata(id: data.id),
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Homepage()),
                        ),
                        // debugPrint(data.id.toString()),
                        debugPrint("Delete Done"),
                      },
                      child: const Text('OK',
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                    ),
                  ],
                ),
              );
            },
            icon: Icon(
              Icons.delete_forever_sharp,
              color: Color.fromARGB(255, 88, 2, 2),
              size: 30,
            )),
      ]),
      // body: Container(
      //   color: Colors.grey.shade200,
      //   width: double.infinity,
      //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Container(
      //             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      //             // decoration: BoxDecoration(
      //             //     color: Colors.indigoAccent,
      //             //     borderRadius: BorderRadius.circular(4)),
      //             child: Text(
      //               "Category_name : ${data.category_name}",
      //               style: TextStyle(
      //                   color: Colors.black,
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //           // Container(
      //           //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      //           //   width: 30,
      //           //   height: 30,
      //           //   decoration: BoxDecoration(
      //           //       color: data.itemcolor,
      //           //       borderRadius: BorderRadius.circular(20)),
      //           // ),
      //           // Container(
      //           //   child: data.isFinish
      //           //       ? Icon(
      //           //           Icons.star,
      //           //           color: Colors.indigoAccent,
      //           //         )
      //           //       : Icon(
      //           //           Icons.star_outline_outlined,
      //           //           color: Colors.indigoAccent,
      //           //         ),
      //           // )
      //         ],
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text(
      //         "Money",
      //         style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text(
      //         "${data.money}",
      //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      //       )
      //     ],
      //   ),
      // )

      body: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.all(15),
        color: Color.fromARGB(255, 224, 221, 221),
        elevation: 20,
        child: Container(
          width: double.infinity,
          height: 400,
          // color: Colors.green,
          child: Column(children: [
            SizedBox(height: 30),
            Text(
              "Category_name : ${data.category_name}",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 30),
            Text(
              " Category_item: ${data.cat_item}",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 30),
            Text(
              " Amount: ${data.money} Ks",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 30),
            Text(
              " Date: ${DateFormat.MMMM().format(data.dateTime)}-${data.dateTime.day}-${data.dateTime.year} ",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 30),
            Text(
              " Description :",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              "${data.description}",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Add_Data_Screen(
                  id: data.id,
                  category_name: data.category_name,
                  cate_item: data.cat_item,
                  money: data.money,
                  dateTime: data.dateTime,
                  description: data.description,
                  isFinish: data.isFinish,
                ),
              ),
            );
          },
          child: Icon(Icons.edit)),
    );
  }
}
