import 'package:flutter/material.dart';
import 'package:flutter_study3/DataTransitionInPages/MainPage.dart';

class PageB extends StatefulWidget {
  const PageB({super.key});

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B Sayfası'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              //PushAndRemoveUntil ana menüye gecilince stacki temizler. Bu sayede gereksiz birikmeden kurutulunur.
              onPressed: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => MainPage()), (route) => false, ); },
              child: Text('Main Menüye Geç'),
            ),
          ]
        )
      ),
    );
  }
}
