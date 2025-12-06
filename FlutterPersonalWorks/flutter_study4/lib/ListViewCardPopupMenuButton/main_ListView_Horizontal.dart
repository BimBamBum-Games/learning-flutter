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

  List<String> items = ["Axe", "Sword", "Knife", "Bow", "Shield"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("ListView With Horizontal Use"),
      ),
      body: SizedBox(
        height: 100,
        child: ListView.builder(
          //Horizontal use of ListView
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (c, i) {
              return Card(
                child: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      Text(items[i]),
                      Spacer(),

                      //PopupMenuButton and Builder Template
                      PopupMenuButton(

                          onSelected: (comingValue){
                            if(comingValue == 0){
                              print("Delete Triggered! For ${items[i]}");
                            }
                            if(comingValue == 1){
                              print("Update Triggered! For ${items[i]}");
                            }
                          },

                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                value: 0,
                                child: Text("Delete"),
                              ),
                              PopupMenuItem(
                                value: 1,
                                child: Text("Update"),
                              )
                            ];
                          }

                      ),
                    ],
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
