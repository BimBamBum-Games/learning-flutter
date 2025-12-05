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
      home: AlertDialogueMainMenu()
    );
  }
}

class AlertDialogueMainMenu extends StatefulWidget {
  const AlertDialogueMainMenu({super.key});

  @override
  State<AlertDialogueMainMenu> createState() => _AlertDialogueMainMenuState();
}

class _AlertDialogueMainMenuState extends State<AlertDialogueMainMenu> {

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
        title: Text("Main Menu"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              userInput,
            ),

            ElevatedButton(
              child: Text("Open the Alert Dialgue!"),
              onPressed: (){
                print("Alert Dialogue Triggered!");

                //Use AlertDialogue with ShowDialogue method
                showDialog(
                    context: context,
                    builder: (BuildContext cnt) {
                      return AlertDialog(
                        title: Text("Alert Dialogue"),
                        content: Text("Alert Dialogue Opened!"),
                        actions: [
                          TextButton(
                            onPressed: (){

                              //Navigator pop can close newly opened window.
                              Navigator.pop(context);
                            },
                            child: Text("Open"),
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Text("Close"),
                          ),
                        ],
                      );
                    }
                );
              }
            ),
            ElevatedButton(
                child: Text("Read User Data from Alert Dialogue!"),
                onPressed: (){
                  print("Alert Dialogue Triggered!");

                  //Use AlertDialogue with ShowDialogue method
                  showDialog(
                      context: context,
                      builder: (BuildContext cnt) {
                        return AlertDialog(
                          title: Text("Alert Dialogue"),

                          //Content takes widget TextField to read data.
                          content: TextField(
                            controller: alertDialogueController,
                          ),
                          actions: [
                            TextButton(
                              onPressed: (){
                                //Navigator pop can close newly opened window.
                                setState(() {
                                  userInput = alertDialogueController.text;
                                  alertDialogueController.text = "";
                                  Navigator.pop(context);
                                });
                              },
                              child: Text("Read Value"),
                            ),
                            TextButton(
                              onPressed: (){
                                alertDialogueController.text = "";
                                Navigator.pop(context);
                              },
                              child: Text("Close"),
                            ),
                          ],
                        );
                      }
                  );
                }
            ),
          ]
        ),
      )

    );
  }
}
