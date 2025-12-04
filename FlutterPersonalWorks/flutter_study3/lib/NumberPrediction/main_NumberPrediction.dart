

import 'package:flutter/material.dart';
import 'package:flutter_study3/NumberPrediction/PredictionMenu.dart';

void main(){
  runApp(NumberPredictionApp());
}

class NumberPredictionApp extends StatefulWidget {
  @override
  State<NumberPredictionApp> createState() => _NumberPredictionAppState();
}

class _NumberPredictionAppState extends State<NumberPredictionApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number Prediction App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: NumberPredictionMainMenu()
    );
  }
}


class NumberPredictionMainMenu extends StatefulWidget {
  const NumberPredictionMainMenu({super.key});
  @override
  State<NumberPredictionMainMenu> createState() => _NumberPredictionMainMenuState();
}

class _NumberPredictionMainMenuState extends State<NumberPredictionMainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Menü"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                "Number Prediction Game",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
            ),
            Container(
                width: 200, height: 200,
                child: Image.asset(
                    "lib/NumberPrediction/ImageAssets/MainMenu.jpg",
                    fit: BoxFit.cover
                )
            ),
            SizedBox(
              width: 300, height: 100,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PredictionMenu()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                ),
                child: Text(
                    "Start Game!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}


