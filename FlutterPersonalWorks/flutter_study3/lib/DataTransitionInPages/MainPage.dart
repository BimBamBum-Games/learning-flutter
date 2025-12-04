import 'package:flutter/material.dart';

import 'PageA.dart';
import 'User.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sayfalar Arasi Data Aktarimi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MainPage()
    );
  }
}

class MainPage extends StatefulWidget {

  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Menü"),
        leading: IconButton(
          onPressed: () {
            print("App Bar Geri Tusuna Basildi!");
            Navigator.pop(context);
            },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (pop, res) {
            print("Geri tuşuna basıldi!");
          },
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              print("A Sayfasına Geç");
              User user = User(name: "Ahmet", age: 25, salary: 500.0);
              Navigator.push(context, MaterialPageRoute(builder: (context) => PageA(user: user)));
            },
            child: Text("A Sayfasına Geç!"),
          ),
        ),
      ),
    );
  }
}
