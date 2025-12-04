

import 'package:flutter/material.dart';

void main(){
  runApp(SnackBarApp());
}

class SnackBarApp extends StatefulWidget {
  const SnackBarApp({super.key});

  @override
  State<SnackBarApp> createState() => _SnackBarAppState();
}

class _SnackBarAppState extends State<SnackBarApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnackBar App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SnackBarManager(),
    );
  }
}



class SnackBarManager extends StatefulWidget {
  const SnackBarManager({super.key});

  @override
  State<SnackBarManager> createState() => _SnackBarManagerState();
}

class _SnackBarManagerState extends State<SnackBarManager> {
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

            //Yöntem 1

              ElevatedButton(

                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Hello There"))
                  );
                },

                child: Text("Show SnackBar Method - 1"),

              ),

            //Yöntem 2

            ElevatedButton(

              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("Silmek istiyor musun?"),
                        action: SnackBarAction(
                          label: "Evet",
                          onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Silindi!"))
                            );
                          },
                        )
                    ),
                );
              },

              child: Text("Show SnackBar Method - 2"),

            ),

            //Yöntem 3

            ElevatedButton(

              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("Bekletme süresi 5 saniye!", style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.black,
                      duration: Duration(seconds: 5),
                      action: SnackBarAction(
                        label: "5 SANİYE",
                        textColor: Colors.yellow,
                        onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Bekledi!"))
                          );
                        },
                      )
                  ),
                );
              },

              child: Text("Show SnackBar Method - 3"),

            ),


          ]
        ),
      )
    );
  }
}
