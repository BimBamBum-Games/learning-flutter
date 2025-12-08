import 'package:flutter/material.dart';
import 'package:flutter_study4/Drawer/DrawerPage1.dart';

import 'DrawerPage2.dart';
import 'DrawerPage3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      color: Colors.lightBlueAccent,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Dynamic List with widgets.
  List<Widget> pages = <Widget>[DrawerPg1(), DrawerPg2(), DrawerPg3()];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //AppBar color added.
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Drawer", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28, color: Colors.white)),
      ),

      //Init page
      body: pages[currentPage],

      //Drawer definition
      drawer: Drawer(

        //Empty Drawer provides an empty side panel.
        child: ListView(

          padding: EdgeInsets.zero,

          children: [

            DrawerHeader(
              child: Text("Drawer Side Panel", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28, color: Colors.white)),
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
            ),

            //ListTile with ListView
            ListTile(
              title: Text("DrawerPage1", style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Colors.orange)),

              //Leading adds widget to left side.
              leading: Icon(Icons.add_a_photo, color: Colors.blue),
              onTap: (){

                //This will update page. Requires to update.
                setState(() {
                  currentPage = 0;
                });

                //Navigator must be added to update page.
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text("DrawerPage2", style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Colors.orange)),
              leading: Icon(Icons.add_card_sharp, color: Colors.blue),
              onTap: (){
                setState(() {
                  currentPage = 1;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text("DrawerPage3", style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Colors.orange)),
              leading: Icon(Icons.account_circle, color: Colors.blue),
              onTap: (){
                setState(() {
                  currentPage = 2;
                });
                Navigator.pop(context);
              },
            ),

          ],

        ),
      ),

    );
  }
}
