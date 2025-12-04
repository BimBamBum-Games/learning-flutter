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
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            ExpandContainerByWH(col: Colors.lightGreen),
            ExpandContainerByWH(col: Colors.limeAccent),
            ExpandContainerByWH(col: Colors.lightBlue),
            Expanded(child: Image.asset('VisualElements/btc.png')),
            ]
        ),
      )
    );
  }
}


//Custom widget class olusturma
class ExpandContainerByWH extends StatelessWidget {
  double w = 1.0;
  double h = 1.0;
  int ratio = 1;
  Color col;

  ExpandContainerByWH({this.ratio = 1, this.col = Colors.grey, this.w = 100, this.h = 100});

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: ratio,
        child: Container(
          width: w, height: h, color: col),
    );
  }
}
