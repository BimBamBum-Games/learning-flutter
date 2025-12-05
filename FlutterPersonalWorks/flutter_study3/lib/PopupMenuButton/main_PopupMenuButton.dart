import 'package:flutter/material.dart';

void main(){
  runApp(AlertDialogueApp());
}

class AlertDialogueApp extends StatefulWidget {
  const AlertDialogueApp({super.key});

  @override
  State<AlertDialogueApp> createState() => _AlertDialogueAppState();
}

class _AlertDialogueAppState extends State<AlertDialogueApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AlertDialogue App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: PopupMenuBtn()
    );
  }
}

class PopupMenuBtn extends StatefulWidget {
  const PopupMenuBtn({super.key});

  @override
  State<PopupMenuBtn> createState() => _PopupMenuBtn();
}

class _PopupMenuBtn extends State<PopupMenuBtn> {

  TextEditingController alertDialogueController = TextEditingController();
  String userInput = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    alertDialogueController.text = "Type Here";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Popup Menu Button Main Menu"),
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PopupMenuButton(
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          value: 1,
                          child: Text("First Item"),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text("Second Item"),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Text("Third Item"),
                        ),
                      ];
                    },
                    onCanceled: () => print("Canceled!"),
                    onSelected: (value){
                      if(value == 1)
                        print("Selected Value: First - $value");
                      if(value == 2)
                        print("Selected Value: Second - $value");
                      if(value == 3)
                        print("Selected Value: Third - $value");
                    },
                ),
              ],
          ),
        )

    );
  }
}
