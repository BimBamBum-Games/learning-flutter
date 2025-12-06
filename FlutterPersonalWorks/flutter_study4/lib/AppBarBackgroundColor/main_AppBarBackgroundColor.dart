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
      home: const MyHomePage(title: 'AppBar Background Color'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //AppBar Color
        backgroundColor: Colors.green,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title"), Text("Sub Title"),
          ],
        ),

        //Leading left side button
        leading: IconButton(
          onPressed: (){
            print("Leading Triggered!");
          },
          icon: Icon(Icons.dehaze),
          tooltip: "Leading Trigger Position!",
        ),

        //Actions right side AppBar buttons
        actions: [

          //Any Button can be added.
          TextButton(
            onPressed: (){
              print("TextButton Triggered!");
            },
            child: Text(
              "Exit!",
              style: TextStyle(color: Colors.white),
            ),
          ),

          ElevatedButton(
            onPressed: (){
              print("Elevated Button Triggered!");
            },
            child: Text("AppBar Elevated Button!"),
          ),

          IconButton(
            onPressed: (){
              print("Info Triggered!");
            },
            icon: Icon(Icons.info_outline),
            tooltip: "Info Action Trigger Position!",
          ),

          IconButton(
            onPressed: (){
              print("Popup Triggered!");
            },
            icon: Icon(Icons.more_vert),
            tooltip: "Popup Action Trigger Position!",
          ),

          //Use of PopupMenuButton and PopupMenuItem
          PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(value: 0, child: Text("Update")),
                  PopupMenuItem(value: 1, child: Text("Delete")),
                  PopupMenuItem(value: 2, child: Text("Upgrade")),
                  PopupMenuItem(value: 3, child: Text("Insert")),
                  PopupMenuItem(value: 4, child: Text("Select")),
                ];
              },

              onSelected: (value){
                print("Selected Value: $value");
              }
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
