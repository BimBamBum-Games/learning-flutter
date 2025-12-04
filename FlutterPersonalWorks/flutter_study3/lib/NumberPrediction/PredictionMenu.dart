import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study3/NumberPrediction/ResultMenu.dart';


class GameContext{
  bool isSuccessful;
  int val;
  GameContext({required this.isSuccessful, required this.val});
}


class PredictionMenu extends StatefulWidget {
  const PredictionMenu({super.key});

  @override
  State<PredictionMenu> createState() => _PredictionMenuState();
}

class _PredictionMenuState extends State<PredictionMenu> {

  //Bu text uzerinde kalan haklar.
  bool result = false;
  bool isBreakable = false;
  int points = 4;
  int predictedNumber = 0;
  int randomNumber = 0;
  String redirectionMessage = "Do Prediction!";

  TextEditingController textFieldController = TextEditingController();


  @override
  void initState() {
    super.initState();

    //Random sayı üret.
    randomNumber = Random().nextInt(101);
    print("Random Number: $randomNumber");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Predict!"),
          backgroundColor: Colors.blue,
        ),

        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Your Rights: $points",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                  ),

                  Text(
                    "Tip: $redirectionMessage",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                  ),

                  Container(
                      width: 200, height: 200,
                      child: Image.asset(
                          "lib/NumberPrediction/ImageAssets/Roll.jpg",
                          fit: BoxFit.cover
                      )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextField(

                      //Controller ile dinlenecek.
                      controller: textFieldController,

                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Type Your Prediction",
                        hintText: "Enter a number",
                        alignLabelWithHint: true,
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        )
                      )
                    ),
                  ),

                  SizedBox(
                    width: 300, height: 100,
                    child: ElevatedButton(
                      onPressed: (){

                        setState(() {
                          //Burada gelen değer inte çevrilir.
                          predictedNumber = int.parse(textFieldController.text);
                        });

                        if(predictedNumber < randomNumber){
                          points--;
                          setState(() {
                            redirectionMessage = "Up";
                          });
                        }

                        if(predictedNumber > randomNumber){
                          points--;
                          setState(() {
                            redirectionMessage = "Down";
                          });
                        }

                        if(predictedNumber == randomNumber) {
                          result = true;
                          isBreakable = true;
                        }

                        if(points == 0){
                          result = false;
                          isBreakable = true;
                        }

                        if(isBreakable){
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => ResultMenu(gameContext: GameContext(isSuccessful: true, val: randomNumber),)));
                        }

                        //Text içini boşalt.
                        textFieldController.text = "";

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                      ),
                      child: Text(
                        "Commit",
                        style: TextStyle(
                          fontSize: 20,
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

