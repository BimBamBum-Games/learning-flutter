import 'package:flutter/material.dart';
import 'package:flutter_study4/DataTransferWithDynamicList/DataHolderPage.dart';

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

  List<String> items = ["Axe", "Sword", "Knife", "Bow", "Shield"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Dynamic List With Data Transfer To A Page"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (c, i){
          return GestureDetector(
            onTap: (){
              print("${items[i]} Triggered By Card");
            },
            child: Card(
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(items[i]),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                    ),
                    onPressed: (){
                      print("${items[i]} Triggered By Button");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TransferDataHolderPage(message: items[i])));
                    },
                    child: Text("Select")
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
