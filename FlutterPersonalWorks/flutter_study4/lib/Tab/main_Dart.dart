

import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
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

  @override
  Widget build(BuildContext context) {

    //DefaultTabController
    return DefaultTabController(

      // Define Tab count
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("Tab App"),

          //Tabs under AppBar's Text. Must be equal to length
          bottom: TabBar(
              tabs: [

                //Any Widget can be in Tab.
                Tab(icon: Icon(Icons.home, color: Colors.white60), text: "Page1"),
                Tab(icon: Icon(Icons.account_balance, color: Colors.white60), text: "Page1"),
                Tab(icon: Icon(Icons.add_box_rounded, color: Colors.white60), text: "Page1"),
              ],

            //Slider color can be changed
            indicatorColor: Colors.white,

            //Selected Tab Item Color. This can not override tab item colors.
            labelColor: Colors.white,

          ),


        ),
        body: TabBarView(
          children: [

            //These pages are just references of pages. TabBarView makes pages related to Tabs.
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}

//These pages will be organized in base of tabs.

// DefaultTabController
// TabBar
// TabBarView


//If AppBar adds into widget then it will be spawned under tab menu.
class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}

