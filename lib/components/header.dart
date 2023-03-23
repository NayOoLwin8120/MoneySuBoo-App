import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:mytest/pages/addmoney.dart';

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
            debugPrint("___________ Searching _______");
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
