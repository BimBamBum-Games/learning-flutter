import 'package:flutter/material.dart';

class DrawerPg3 extends StatefulWidget {
  const DrawerPg3({super.key});

  @override
  State<DrawerPg3> createState() => _DrawerPg3State();
}

class _DrawerPg3State extends State<DrawerPg3> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Page3"),
            ]
        )
    );
  }
}
