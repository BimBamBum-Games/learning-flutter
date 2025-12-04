import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Program'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//Bu canvas layout classi olacak
class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
    print("Program initiated!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Row
        (
          children: [
            Text("Humanizer"),
            Container(width: 100, height: 100, color: Colors.lightBlue),
            Container(width: 100, height: 100, color: Colors.blueAccent),
            Container(width: 100, height: 100, color: Colors.blue)
          ]
        )
      // Column(
      //     children: [
      //   Container(width: 100, height: 100, color: Colors.lightBlue),
      //   Container(width: 75, height: 100, color: Colors.blueAccent),
      //   Container(width: 50, height: 100, color: Colors.blue)]
      // )
    );
  }
}
