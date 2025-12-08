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

  //Create widget pages
  List<Widget> pages = [

    //These are also widgets

    NavPage1(),
    NavPage2(),
    NavPage3(),
  ];

  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Bottom Navigation Bar App"),
      ),

      //Pick first page
      body: pages[selectedPage],

      //BottomNavBar definition
      bottomNavigationBar: BottomNavigationBar(

        //As list add page items
        items: [

          //Items BottomNavigationBarItem
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "Page1",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_business),
            label: "Page2",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_sharp),
            label: "Page3",
          ),

        ],

        //Costumizations
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        currentIndex: selectedPage,

        //Setter by inner button to get current button index to update values.
        onTap: (selectedButtonIndex){
          setState(() {

            //This will update canvas. Each trigger.
            selectedPage = selectedButtonIndex;
          });
        },

      ),
    );
  }
}


class NavPage1 extends StatefulWidget {

  @override
  State<NavPage1> createState() => _NavPage1State();
}

class _NavPage1State extends State<NavPage1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300, height: 300,
            child: Card(
              color: Colors.blueAccent,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Page1"),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavPage2 extends StatefulWidget {

  @override
  State<NavPage2> createState() => _NavPage2State();
}

class _NavPage2State extends State<NavPage2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300, height: 300,
            child: Card(
              color: Colors.redAccent,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Page2"),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavPage3 extends StatefulWidget {

  @override
  State<NavPage3> createState() => _NavPage3State();
}

class _NavPage3State extends State<NavPage3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300, height: 300,
            child: Card(
              color: Colors.greenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Page3"),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
