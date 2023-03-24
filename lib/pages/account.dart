import 'package:flutter/material.dart';

import 'package:mytest/components/header.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
              child: Text("My Account",
                  style: TextStyle(color: Colors.amberAccent)),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  print("This is  setting");
                },
              ),
            ]),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.black,
                  ),
                  width: double.infinity,
                  height: 180,
                ),
                Positioned(
                    // top: -100,
                    right: 130,
                    bottom: -60,
                    child: Container(
                      // clipBehavior: Clip.none,
                      height: 140,

                      child: const CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                          "https://randomuser.me/api/portraits/men/64.jpg",
                        ),
                      ),
                    )),
                Positioned(
                    right: 115,
                    bottom: -95,
                    child: Text(
                      "Mr.Nay Oo Lwin",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontStyle: FontStyle.italic),
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey[100],
              ),
              width: 500,
              height: 200,
              child: Row(
                children: [
                  Card(
                    elevation: 15,
                    child: Container(
                      color: Colors.black54,
                      width: 130,
                      height: 200,
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 100,
                            child: Center(
                                child: Text(
                              "Income",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: Colors.white70),
                            )),
                          ),
                          Container(
                              height: 3,
                              width: 90,
                              color: Colors.black,
                              margin: EdgeInsets.only(top: 5)),
                          Container(
                            height: 90,
                            width: 100,
                            child: Center(
                                child: Text(
                              "20000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    // elevation: 10,
                    child: Container(
                      color: Colors.black54,
                      width: 130,
                      height: 200,
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 110,
                            child: Center(
                                child: Text(
                              "Outcome",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: Colors.white70),
                            )),
                          ),
                          Container(
                              height: 3,
                              width: 150,
                              color: Colors.black,
                              margin: EdgeInsets.only(top: 5)),
                          Container(
                            height: 90,
                            width: 150,
                            child: Center(
                                child: Text(
                              "20000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    // elevation: 10,
                    child: Container(
                      color: Colors.black54,
                      width: 124,
                      height: 200,
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 100,
                            child: Center(
                                child: Text(
                              "Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: Colors.white70),
                            )),
                          ),
                          Container(
                              height: 3,
                              width: 90,
                              color: Colors.black,
                              margin: EdgeInsets.only(top: 5)),
                          Container(
                            height: 90,
                            width: 100,
                            child: Center(
                                child: Text(
                              "20000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //---------  start user data
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey[100],
              ),
              width: 500,
              height: 117,
              child: Row(
                children: [
                  Card(
                    elevation: 15,
                    child: Container(
                      color: Colors.black54,
                      width: 400,
                      height: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: Center(
                                child: Text(
                              "Gmail",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: Colors.white70),
                            )),
                          ),
                          Container(
                              height: 3,
                              width: 350,
                              color: Colors.black,
                              margin: EdgeInsets.only(top: 5)),
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: Center(
                                child: Text(
                              "nayoolwin256@gmail.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )

            //--------- end  user data
          ],

          //end user data
        ));
  }
}
