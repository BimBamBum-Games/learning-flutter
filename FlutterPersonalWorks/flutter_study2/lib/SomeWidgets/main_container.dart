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
        body: Container(
          margin: EdgeInsets.all(20),
            alignment: Alignment.center, // Alingment saglar child icin.
            child: Text("Hello Me Container!"),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.pink, //Arkaplan rengi container icinde ayri parameter olarak gönderilirse hata verir.
              border: Border.all(
                color: Colors.black,
                width: 1.2,
              ), //kenarlar

              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              
            )
        )
    );
  }
}
