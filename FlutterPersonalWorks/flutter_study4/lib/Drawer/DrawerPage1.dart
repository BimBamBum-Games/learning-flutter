import "package:flutter/material.dart";

class DrawerPg1 extends StatefulWidget {
  const DrawerPg1({super.key});

  @override
  State<DrawerPg1> createState() => _DrawerPg1State();
}

class _DrawerPg1State extends State<DrawerPg1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Page1"),
        ]
      )
    );
  }
}
