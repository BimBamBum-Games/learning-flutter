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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("ListView App"),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.sunny),
              title: Text("Sunny"),
              subtitle: Text("Cloudy"),
              trailing: Icon(Icons.arrow_circle_right),
              onTap: (){
                print("ListView, ListTitle Sunny Triggered!");
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("New Mail"),
              trailing: Icon(Icons.arrow_circle_right),
              onTap: (){
                print("ListView, ListTitle Email Triggered!");
              },
            ),
            ListTile(
              leading: Icon(Icons.radar),
              title: Text("Radar Station"),
              subtitle: Text("Low Energy"),
              trailing: Icon(Icons.arrow_circle_right),
              onTap: (){
                print("ListView, ListTitle Radar Triggered!");
              },
            ),
            ListTile(
              leading: Icon(Icons.face),
              title: Text("Family"),
              subtitle: Text("Brother"),
              trailing: Icon(Icons.arrow_circle_right),
              onTap: (){
                print("ListView, ListTitle Family Triggered!");
              },
            ),
            ListTile(
              leading: Icon(Icons.back_hand),
              title: Text("Stop"),
              subtitle: Text("Speed"),
              trailing: Icon(Icons.arrow_circle_right),
              onTap: (){
                print("ListView, ListTitle Stop Triggered!");
              },
            ),

            //Add Gesture Detector to grant touch ability to Card.
            GestureDetector(
              onTap: (){
                print("Card In ListView Triggered!");
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Card In ListView"),
                      Text("But As Static"),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
