
import 'package:flutter/material.dart';

class TransferDataHolderPage extends StatefulWidget {
  String message;
  TransferDataHolderPage({required this.message});

  @override
  State<TransferDataHolderPage> createState() => _TransferDataHolderPageState();
}

class _TransferDataHolderPageState extends State<TransferDataHolderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer Data Holder Page"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.message),
          ],
        ),
      ),
    );
  }
}
