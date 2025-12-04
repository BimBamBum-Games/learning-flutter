import 'package:flutter/material.dart';

void main(){
  runApp(GestureDetectorApp());
}

class GestureDetectorApp extends StatefulWidget {
  @override
  State<GestureDetectorApp> createState() => _GestureDetectorAppState();
}

class _GestureDetectorAppState extends State<GestureDetectorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sayfalar Arasi Data Aktarimi',
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: GestureDetectorMainMenu()
    );
  }
}

class GestureDetectorMainMenu extends StatefulWidget {
  @override
  State<GestureDetectorMainMenu> createState() => _GestureDetectorMainMenuState();
}

class _GestureDetectorMainMenuState extends State<GestureDetectorMainMenu> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Menü"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            //Bu widgete dokunmatik kabiletleri sağlar.
            GestureDetector(

              onTap: (){
                print("Tıklandı!");
              },

              onDoubleTap: (){
                print("Çift Tıklandı!");
              },

              onLongPress: (){
                print("Uzun Basıldı!");
              },

              child: Container(
                //Stretch container width değeri önemli değil. Önemli olan cross için height değerdir.
                width: 100, height: 100,
                color: Colors.blueGrey,
              ),
            )
          ]
        )
      ),
    );
  }
}
