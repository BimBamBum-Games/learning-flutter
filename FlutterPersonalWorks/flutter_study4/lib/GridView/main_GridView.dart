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
        backgroundColor: Colors.grey,
        title: Text("Grid View App"),
      ),
      body: GridView.count(
        crossAxisCount: 3, //Horizontal element count
        childAspectRatio: 2, //Aspect Ratio according to count
        children: [
          GestureDetector(
            onTap: (){
              print("Brightness Triggered!");
            },
            child: Card(
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.brightness_2, color: Colors.white,),
                  Text("Brightness"),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print("Vibration Triggered!");
            },
            child: Card(
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.vibration, color: Colors.white,),
                  Text("Vibration"),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print("GSM Triggered!");
            },
            child: Card(
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.radar, color: Colors.white,),
                  Text("GSM"),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print("Volume Triggered!");
            },
            child: Card(
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.volume_up_rounded, color: Colors.white,),
                  Text("Volume"),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print("Star Triggered!");
            },
            child: Card(
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.white,),
                  Text("Starring"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
