import 'package:flutter/material.dart';
void main(){
  runApp(ButtonsMyApp());
}

class ButtonsMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sayfalar Arasi Data Aktarimi',
        theme: ThemeData(
          useMaterial3: false,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: ButtosMainPage()
    );
  }
}

class ButtosMainPage extends StatefulWidget {
  @override
  State<ButtosMainPage> createState() => _MainPageState();
}

class _MainPageState extends State<ButtosMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Menü"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 40, child: Container()),

            Expanded(
              flex: 20,
              child: Row(
                children: [
                  Expanded(flex: 10, child: Container()),
                  Expanded(
                    flex: 80,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "User Name",
                        hintText: "User Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 10, child: Container()),
                ],
              ),
            ),
            Expanded(flex: 40, child: Container()),
          ],
        ),
      ),

      //Bodyden ayri olabiliyor.
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Ben Kayan Button!");
        },
        tooltip: "Ask AI",
        label: Text("AI Ajanınız Her An Hazır!"),
        icon: Icon(Icons.add_ic_call_outlined),
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.black,
      ),

    );
  }
}
