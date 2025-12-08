import 'package:flutter/material.dart';

class DrawerPg2 extends StatefulWidget {
  const DrawerPg2({super.key});

  @override
  State<DrawerPg2> createState() => _DrawerPg2State();
}

class _DrawerPg2State extends State<DrawerPg2> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Page2"),
            ]
        )
    );
  }
}
