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
        body:
        //Center row ve coloumn u tek baslarina iken ortalar. Iceriklere yapamaz.
        //Centerlar tek baslarina alan kaplamazlar.

        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100, height: 100, color: Colors.lightGreen,
                child: Center(child: Text("Bomb Ready!")),
              ),
              Container(
                width: 100, height: 100, color: Colors.lightGreen,
                child: Center(child: Text("Bomb Ready!")),
              ),
            ],
          ),
        )

    );
  }
}
