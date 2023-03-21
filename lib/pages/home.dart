import 'package:flutter/material.dart';
import 'package:mytest/pages/addmoney.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
          color: Colors.teal,
          margin: const EdgeInsets.only(top: 3, bottom: 3),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                    width: 60,
                    height: 50,
                    // color: Colors.red,
                    decoration: const BoxDecoration(
                        color: Colors.red,
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
                            Colors.red,
                            Colors.green,
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
          color: Colors.teal,
          margin: const EdgeInsets.only(bottom: 2),
          padding: const EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              width: 150,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: const Center(
                child: (Text("Balance :",
                    style: TextStyle(color: Colors.black, fontSize: 20))),
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 150,
              // margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),

              child: const Center(
                child: (Text("2000 ks",
                    style: TextStyle(color: Colors.black, fontSize: 20))),
              ),
            ),
          ]),
        ),
        //---------------End  Balance Section -------------------

        //--------------- Start Income and Outcome Section ------
        Container(
          color: Colors.teal,
          margin: const EdgeInsets.only(bottom: 2),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
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
                      child: (TextButton(
                        style: const ButtonStyle(),
                        onPressed: () {
                          debugPrint("Hello");
                        },
                        child: const Text(
                          'Income',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                width: 120,
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
                      child: (TextButton(
                        style: const ButtonStyle(),
                        onPressed: () {
                          debugPrint("Hello");
                        },
                        child: const Text(
                          'Outcome',
                          style: TextStyle(fontSize: 20, color: Colors.black),
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
          color: Colors.teal,
          height: 344,
          padding: const EdgeInsets.all(10),
          // child: Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Container(
          //             width: 120,
          //             height: 80,
          //             color: Colors.red,
          //             // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
          //             child: const Center(
          //               child: (Text("Task",
          //                   style: TextStyle(
          //                       color: Colors.black, fontSize: 20))),
          //             )),
          //         Container(
          //             width: 120,
          //             height: 80,
          //             color: Colors.red,
          //             child: const Center(
          //               child: (Text("Money",
          //                   style: TextStyle(
          //                       color: Colors.black, fontSize: 20))),
          //             )),
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Container(
          //             width: 120,
          //             height: 80,
          //             color: Colors.red,
          //             // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
          //             child: const Center(
          //               child: (Text("Clothing",
          //                   style: TextStyle(
          //                       color: Colors.black, fontSize: 20))),
          //             )),
          //         Container(
          //             width: 120,
          //             height: 80,
          //             color: Colors.red,
          //             child: const Center(
          //               child: (Text("15000 Ks",
          //                   style: TextStyle(
          //                       color: Colors.black, fontSize: 20))),
          //             )),
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Container(
          //             width: 120,
          //             height: 60,
          //             color: Colors.red,
          //             // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
          //             child: const Center(
          //               child: (Text("Tea",
          //                   style: TextStyle(
          //                       color: Colors.black, fontSize: 20))),
          //             )),
          //         Container(
          //             width: 120,
          //             height: 64,
          //             color: Colors.red,
          //             child: const Center(
          //               child: (Text("2000",
          //                   style: TextStyle(
          //                       color: Colors.black, fontSize: 20))),
          //             )),
          //       ],
          //     ),
          //   ],
          // ),
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
