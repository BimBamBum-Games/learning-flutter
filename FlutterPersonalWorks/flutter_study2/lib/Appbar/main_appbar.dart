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
      home: CustomAppbar(),
    );
  }
}

//Stateful
class CustomAppbar extends StatefulWidget {

  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Appbar'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Expanded(
          flex: 1,
          child: Center(
              child: Container(color: Colors.lightGreen))),
    );
  }
}
