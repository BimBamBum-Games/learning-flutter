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

  //With a Boolean we can control the AppBar Search.
  bool canSearch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: canSearch ?
          Text("AppBar Search Application") :
          TextField(
            decoration: InputDecoration(
              hintText: "Search",
            ),
            onChanged: (value){
              print("Search Value: $value");
            },
          ),
        actions: [
          canSearch ?
          IconButton(
              onPressed: (){
                setState(() {
                  canSearch = false;
                });
              },
              icon: Icon(Icons.search)
          ) :
          IconButton(
              onPressed: (){
                setState(() {
                  canSearch = true;
                });
              },
              icon: Icon(Icons.cancel)
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ],
        ),
      ),
    );
  }
}
