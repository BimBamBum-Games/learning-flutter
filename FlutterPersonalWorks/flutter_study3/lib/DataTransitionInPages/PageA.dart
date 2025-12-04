import 'package:flutter/material.dart';
import 'package:flutter_study3/DataTransitionInPages/PageB.dart';
import 'package:flutter_study3/DataTransitionInPages/User.dart';

class PageA extends StatefulWidget {

  User user;

  PageA({required this.user});


  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Sayfası'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 5, child: Container()),
            Expanded(child: Text("Ad: ${widget.user.name}")),
            Expanded(child: Text("Yaş: ${widget.user.age}")),
            Expanded(child: Text("Maaş: ${widget.user.salary}")),
            Expanded(child: ElevatedButton(
              child: Text("B Sayfasına Geç!"),
              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PageB()));
                },
              ),
            ),
            Expanded(flex: 5, child: Container()),
          ],
        )
      ),
    );
  }
}

