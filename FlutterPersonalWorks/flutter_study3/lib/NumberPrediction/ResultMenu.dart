import 'package:flutter/material.dart';
import 'package:flutter_study3/NumberPrediction/PredictionMenu.dart';

class ResultMenu extends StatefulWidget {

  GameContext gameContext;
  ResultMenu({required this.gameContext});

  @override
  State<ResultMenu> createState() => _ResultMenuState();
}

class _ResultMenuState extends State<ResultMenu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Result"),
          backgroundColor: Colors.blue,
        ),

        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.gameContext.isSuccessful ? "You Win!" : "You Lost",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    widget.gameContext.val.toString(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                      width: 200, height: 200,
                      child: Image.asset(
                          widget.gameContext.isSuccessful ? "lib/NumberPrediction/ImageAssets/Smiley.jpg" : "lib/NumberPrediction/ImageAssets/SadEmoji.jpg",
                          fit: BoxFit.cover
                      )
                  ),

                  SizedBox(
                    width: 300, height: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        //Pop ile replace edilen yerden geri ana ekrana çıkış sağlar.
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                      ),
                      child: Text(
                        "Main Menu",
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
