import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  CounterManager counterManager = CounterManager();
  counterManager.start(); // Manager burada başlatılıyor
  runApp(MyApp(counterManager: counterManager));
}

class MyApp extends StatelessWidget {
  final CounterManager counterManager;

  const MyApp({super.key, required this.counterManager});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(
        title: 'Cook Hand Book',
        counterManager: counterManager,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final CounterManager counterManager;

  const MyHomePage({super.key, required this.title, required this.counterManager});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Center(
        child: ValueListenableBuilder<int>(
          valueListenable: widget.counterManager.value,
          builder: (context, val, child) {
            return Text(
              "Sayaç: $val",
              style: TextStyle(fontSize: 20),
            );
          },
        ),
      ),
    );
  }
}

class CounterManager {
  final ValueNotifier<int> value = ValueNotifier<int>(0);
  bool _running = false;

  void start() {
    if (_running) return;
    _running = true;
    _tick();
  }

  void stop() {
    _running = false;
  }

  void _tick() async {
    while (_running) {
      await Future.delayed(Duration(seconds: 1));
      value.value += 1;
    }
  }
}
