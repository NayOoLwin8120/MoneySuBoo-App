import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:mytest/pages/addmoney.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderHome extends StatefulWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(70);

  const HeaderHome({Key? key}) : super(key: key);

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
        child: Text("Money SuBoo", style: TextStyle(color: Colors.amberAccent)),
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
        // IconButton(
        //   icon: const Icon(Icons.add_circle),
        //   tooltip: 'Add new Task',
        //   onPressed: () {
        //     Navigator.of(context).push(
        //         MaterialPageRoute(builder: (context) => const Addmoney()));
        //   },
        // ),
        IconButton(
          icon: const Icon(Icons.search_rounded),
          tooltip: 'Search task',
          onPressed: () {
            debugPrint("___________ Searching _______");
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.info,
            size: 28,
          ),
          tooltip: 'Search task',
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      title: Container(
                          width: double.infinity,
                          color: Colors.black54,
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "About",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(" "),
                              Text(" "),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Cancel');
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    size: 28,
                                    color: Color.fromARGB(255, 249, 142, 140),
                                  ))
                            ],
                          )),
                      // icon: Icon(Icons.close_rounded),
                      content: Container(
                        width: 200,
                        height: 255,
                        child: Column(
                          children: [
                            Text(
                              "Money Suboo \n",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              "Version 1.0.1 \n ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              "Money Suboo application for mannage your money in your daily life. \n",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              "Developed By Nay Oo lwin \n",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic),
                            ),
                            Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () async {
                                          final url = Uri.parse(
                                              'https://github.com/NayOoLwin8120');
                                          if (await launchUrl(url)) {
                                            await launchUrl(url);
                                          }
                                        },
                                        icon: Icon(Icons.facebook)),
                                    IconButton(
                                        onPressed: () async {
                                          final url = Uri.parse(
                                              'https://github.com/NayOoLwin8120');
                                          if (await launchUrl(url)) {
                                            await launchUrl(url);
                                          }
                                        },
                                        icon: Icon(Icons.facebook)),
                                    IconButton(
                                        onPressed: () async {
                                          final url = Uri.parse(
                                              'https://github.com/NayOoLwin8120');
                                          if (await launchUrl(url)) {
                                            await launchUrl(url);
                                          }
                                        },
                                        icon: Icon(Icons.facebook))
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ));
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
    );
  }
}
