import 'package:flutter/material.dart';


void main(){
  runApp(const MainApp());
}


class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gorev Yoneticisi Gorunen Adi",
      debugShowCheckedModeBanner: false,
      home: MainState(),
    );
  }
}

class MainState extends StatefulWidget {
  const MainState({super.key});

  @override
  State<MainState> createState() => _MainStateState();
}

class _MainStateState extends State<MainState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MainState"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 98,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 33,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 33,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          color: Colors.green,
                          child: ElevatedButton(
                            onPressed: null,
                            child: const Text("Button"),

                            //Burada stretch et
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 33,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                  ]
              ),
            ),
            Expanded(flex: 1, child: Container()),
          ],
        ),
      )
    );
  }
}


