import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child:
          Text("Money Suboo",
              style: TextStyle(color:Colors.amberAccent)
          ),
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
        actions:[
          IconButton(
            icon: const Icon(Icons.add_circle),
            tooltip: 'Add new Task',
            onPressed: () {
              debugPrint("___________ New Route _______");
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content:
                Text("This is adding button"
                    ),
                duration: Duration(seconds: 5),
                dismissDirection: DismissDirection.up,
                action: SnackBarAction(textColor: Colors.tealAccent,onPressed: (){
                  debugPrint("----------- Hello -------");
                },
                  label:'Undo'
                ),
                    ),
              );
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
        toolbarHeight:70,
        backgroundColor: Colors.blueGrey,
        elevation: 20,
        shadowColor: Colors.black,
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.only(bottomLeft:Radius.circular(8),bottomRight: Radius.circular(8)),
        )
      ),
      body:
        Column(
          children: [
            //---------------Start  Date Section -------------------
            Container(
              color: Colors.teal,
              margin:EdgeInsets.only(top:10,bottom:10) ,
              padding: EdgeInsets.all(10),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Container(
                  width:60,
                  height:50,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      // border:Border.all(color:Colors.black),
                      // borderRadius: BorderRadius.circular(50)
                    gradient: LinearGradient(
                      colors:[
                        Colors.red,

                        Colors.green,
                      ],
                      begin: Alignment.topLeft,
                    ),
                    shape: BoxShape.circle
                  ),
                  // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),

                   child:Center(
                     child: (
                       const Text("SUN",style:TextStyle(color:Colors.black,fontSize:20))
                     ),
                   )
                ),
                Container(
                    width:60,
                    height:50,

                   //decoration: BoxDecoration(color: Colors.red,border:Border.all(color:Colors.black),borderRadius: BorderRadius.circular(50)),
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      // border:Border.all(color:Colors.black),
                      // borderRadius: BorderRadius.circular(50)
                        gradient: LinearGradient(
                          colors:[
                            Colors.red,

                            Colors.green,
                          ],
                          begin: Alignment.topLeft,
                        ),
                        shape: BoxShape.circle
                    ),
                    child:Center(
                      child: (
                          const Text("MON ",style:TextStyle(color:Colors.black,fontSize:20))
                      ),
                    )
                ),
                Container(
                    width:60,
                    height:50,
                    decoration: BoxDecoration(color: Colors.red,border:Border.all(color:Colors.black),borderRadius: BorderRadius.circular(50)),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child:Center(
                      child: (
                          const Text("TUE",style:TextStyle(color:Colors.black,fontSize:20))
                      ),
                    )
                ),
                Container(
                    width:60,
                    height:50,
                    decoration: BoxDecoration(color: Colors.red,border:Border.all(color:Colors.black),borderRadius: BorderRadius.circular(50)),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child:Center(
                      child: (
                          const Text("WED",style:TextStyle(color:Colors.black,fontSize:20))
                      ),
                    )
                ),
                Container(
                    width:60,
                    height:50,
                    decoration: BoxDecoration(color: Colors.red,border:Border.all(color:Colors.black),borderRadius: BorderRadius.circular(50)),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child:Center(
                      child: (
                          const Text("THU",style:TextStyle(color:Colors.black,fontSize:20))
                      ),
                    )
                ),
                Container(
                    width:60,
                    height:50,
                    decoration: BoxDecoration(color: Colors.red,border:Border.all(color:Colors.black),borderRadius: BorderRadius.circular(50)),
                    // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child:Center(
                      child: (
                          const Text("FRI",style:TextStyle(color:Colors.black,fontSize:20))
                      ),
                    )
                ),





              ],


              ),
            ),
            //---------------End  Date Section ---------------------

            //---------------Start  Balance Section ----------------
            Container(
              color: Colors.teal,
              margin:EdgeInsets.only(top:10,bottom:10) ,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  Container(

                     width:350,
                      margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child:Center(
                        child: (
                            const Text("Balance : 150 Ks",style:TextStyle(color:Colors.black,fontSize:20))
                        ),
                      )
                  ),
                ]
              ),
            ),
            //---------------End  Balance Section -------------------

            //--------------- Start Income and Outcome Section ------
            Container(
              color: Colors.teal,
              margin:EdgeInsets.only(top:10,bottom:10) ,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  Container(
                      width:120,
                      height:80,
                      color: Colors.red,
                      // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child:Center(
                        child: (
                            const Text("Income",style:TextStyle(color:Colors.black,fontSize:20))
                        ),
                      )
                  ),
                  Container(
                      width:120,
                      height:80,
                      color: Colors.red,

                      child:Center(
                        child: (
                            const Text("Outcome",style:TextStyle(color:Colors.black,fontSize:20))
                        ),
                      )
                  ),
                ],


              ),
            ),
            //----------- End Income and Outcome Section ------------

            //------------ Start Task list Section -------------------
            Container(
              color: Colors.teal,
              height:244,
              margin:EdgeInsets.only(top:10,bottom:10) ,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Container(
                          width:120,
                          height:80,
                          color: Colors.red,
                          // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child:Center(
                            child: (
                                const Text("Task",style:TextStyle(color:Colors.black,fontSize:20))
                            ),
                          )
                      ),
                      Container(
                          width:120,
                          height:80,
                          color: Colors.red,

                          child:Center(
                            child: (
                                const Text("Money",style:TextStyle(color:Colors.black,fontSize:20))
                            ),
                          )
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Container(
                          width:120,
                          height:80,
                          color: Colors.red,
                          // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child:Center(
                            child: (
                                const Text("Clothing",style:TextStyle(color:Colors.black,fontSize:20))
                            ),
                          )
                      ),
                      Container(
                          width:120,
                          height:80,
                          color: Colors.red,

                          child:Center(
                            child: (
                                const Text("15000 Ks",style:TextStyle(color:Colors.black,fontSize:20))
                            ),
                          )
                      ),
                    ],


                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Container(
                          width:120,
                          height:60,
                          color: Colors.red,
                          // margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child:Center(
                            child: (
                                const Text("Tea",style:TextStyle(color:Colors.black,fontSize:20))
                            ),
                          )
                      ),
                      Container(
                          width:120,
                          height:64,
                          color: Colors.red,

                          child:Center(
                            child: (
                                const Text("2000Ks",style:TextStyle(color:Colors.black,fontSize:20))
                            ),
                          )
                      ),
                    ],


                  ),
                ],
              ),
            )
            //----------- End Task List Section ------------------------
          ],
        ),

      // ______ Start for footer ___________
      bottomNavigationBar:BottomNavigationBar(
        items:const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.article_outlined),
            label: 'All List',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),
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
