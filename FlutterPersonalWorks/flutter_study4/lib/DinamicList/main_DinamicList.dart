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

  var users = ["Haluk", "Simge", "Su", "Bengü", "Selin", "Linda", "Oksana", "Veronica", "Aisha"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Dynamic List App"),
      ),

      body: ListView.builder(
        itemCount: users.length, //ListView wants to know the number of list element
        itemBuilder: (context, index){ //itemBuilder will built the Gestured Card template and instantiate it with index number.
          return GestureDetector(
            onTap: (){
              print("User: ${users[index]} Triggered!");
            },
            child: Card(
              color: Colors.lightBlueAccent,
              child: SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.laptop_mac),
                      Text(users[index]),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
