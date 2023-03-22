import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mytest/pages/addmoney.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Data> _data = List.generate(10, (index) {
    return Data(
        time: "Time $index", name: "Sayin $index", value: "Money $index");
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child:
              Text("Money SuBoo", style: TextStyle(color: Colors.amberAccent)),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        leadingWidth: 56,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle),
            tooltip: 'Add new Task',
            onPressed: () {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     content: const Text("This is adding button"),
              //     duration: const Duration(seconds: 5),
              //     dismissDirection: DismissDirection.up,
              //     action: SnackBarAction(
              //         textColor: Colors.tealAccent,
              //         onPressed: () {
              //           debugPrint("----------- Hello -------");
              //         },
              //         label: 'Undo'),
              //   ),
              // );
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Addmoney()));
            },
          ),
          IconButton(
            icon: const Icon(Icons.search_rounded),
            tooltip: 'Search task',
            onPressed: () {
              debugPrint("___________ New Route _______");
            },
          ),
        ],
        toolbarHeight: 70,
        backgroundColor: Colors.blueGrey,
        elevation: 20,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
        ),
      ),
      body: Column(children: [
        //---------------Start  Date Section -------------------
        Container(
          // color: Colors.teal,
          margin: const EdgeInsets.only(top: 3, bottom: 3),
          padding: const EdgeInsets.all(10),
          height: 63,
          // constraints: BoxConstraints(maxHeight: 90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                    width: 60,
                    height: 50,
                    // color: Colors.red,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 235, 110, 101),
                        // border:Border.all(color:Colors.black),
                        // borderRadius: BorderRadius.circular(50)

                        shape: BoxShape.circle),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),

                    child: const Center(
                      child: (Text("SUN",
                          style: TextStyle(color: Colors.black, fontSize: 20))),
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 50,

                    //decoration: BoxDecoration(color: Colors.red,border:Border.all(color:Colors.black),borderRadius: BorderRadius.circular(50)),
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        // border:Border.all(color:Colors.black),
                        // borderRadius: BorderRadius.circular(50)
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Color.fromARGB(255, 202, 210, 202),
                          ],
                          begin: Alignment.topLeft,
                        ),
                        shape: BoxShape.circle),
                    child: const Center(
                      child: (Text("MON ",
                          style: TextStyle(color: Colors.black, fontSize: 20))),
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 50,
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        // border:Border.all(color:Colors.black),
                        // borderRadius: BorderRadius.circular(50)
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.green,
                          ],
                          begin: Alignment.topLeft,
                        ),
                        shape: BoxShape.circle),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: const Center(
                      child: (Text("TUE",
                          style: TextStyle(color: Colors.black, fontSize: 20))),
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 50,
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        // border:Border.all(color:Colors.black),
                        // borderRadius: BorderRadius.circular(50)
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.green,
                          ],
                          begin: Alignment.topLeft,
                        ),
                        shape: BoxShape.circle),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: const Center(
                      child: (Text("WED",
                          style: TextStyle(color: Colors.black, fontSize: 20))),
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 50,
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        // border:Border.all(color:Colors.black),
                        // borderRadius: BorderRadius.circular(50)
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.green,
                          ],
                          begin: Alignment.topLeft,
                        ),
                        shape: BoxShape.circle),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: const Center(
                      child: (Text("THU",
                          style: TextStyle(color: Colors.black, fontSize: 20))),
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 50,
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        // border:Border.all(color:Colors.black),
                        // borderRadius: BorderRadius.circular(50)
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.green,
                          ],
                          begin: Alignment.topLeft,
                        ),
                        shape: BoxShape.circle),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: const Center(
                      child: (Text("FRI",
                          style: TextStyle(color: Colors.black, fontSize: 20))),
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: const Center(
                      child: (Text("Sat",
                          style: TextStyle(color: Colors.black, fontSize: 20))),
                    )),
              )
            ],
          ),
        ),
        //---------------End  Date Section ---------------------

        //---------------Start  Balance Section ----------------
        Container(
          color: Color.fromARGB(255, 219, 235, 233),
          margin: const EdgeInsets.only(bottom: 2),
          padding: const EdgeInsets.all(10),
          constraints: BoxConstraints(maxHeight: 70),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              // width: 150,
              margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),
              // color: Colors.red,
              child: Column(
                children: const [
                  Text("Income",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                  Text("2000",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              // width: 150,
              // margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),

              child: Column(
                children: const [
                  Text("Outcome",
                      style: TextStyle(
                        color: Color.fromARGB(255, 5, 240, 21),
                        fontSize: 20,
                      )),
                  Text("2000",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
            Container(
              // width: 150,
              // margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),

              child: Column(
                children: const [
                  Text("Total",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                      )),
                  Text("20000",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
          ]),
        ),
        //---------------End  Balance Section -------------------

        //--------------- Start Income and Outcome Section ------
        Container(
          color: Color.fromARGB(255, 219, 235, 233),
          margin: const EdgeInsets.only(bottom: 2),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                height: 50,
                padding: const EdgeInsets.only(
                    top: 1, right: 3, bottom: 5, left: 10),
                // color: Colors.red,
                // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),

                child: Row(
                  children: [
                    Center(
                      child: (TextButton.icon(
                        icon: const Icon(Icons.add),
                        style: const ButtonStyle(),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Addmoney()));
                        },
                        label: const Text(
                          'Income',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 50,
                padding: const EdgeInsets.only(
                    top: 1, right: 2, bottom: 5, left: 10),
                // color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Row(
                  children: [
                    Center(
                      child: (TextButton.icon(
                        // style: const(),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Addmoney()));
                        },
                        label: const Text(
                          'Outcome',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        icon: const Icon(
                          Icons.add,
                          size: 30,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //----------- End Income and Outcome Section ------------
        // const SizedBox(height: 20.0),
        //------------ Start Task list Section -------------------
        Container(
          color: Color.fromARGB(255, 5, 227, 201),
          height: 344,
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                isThreeLine: true,
                leading: Icon(Icons.attach_money_rounded),
                title: Text(_data[index].time!),
                subtitle: Text(_data[index].name!),
                trailing: Text(_data[index].value!),
              );
            },
          ),
        ),
      ]),

      // ______ Start for footer ___________
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'All List',
            // activeIcon: IconButton(
            //   onPressed: () {},
            // ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          )
        ],
      ),
      // _______ End For Footer ----------
      // ----------- Start for sidebar --------
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'Money Suboo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      // ------------ End for Sidebar --------
    );
  }
}

class Data {
  final String? time;
  final String? name;
  final String? value;
  Data({this.time, this.name, this.value});
}
