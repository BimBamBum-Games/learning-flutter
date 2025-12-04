import 'package:flutter/material.dart';

void main(){

  runApp(AppStart());

}

class AppStart extends StatefulWidget {
  const AppStart({super.key});

  @override
  State<AppStart> createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Future Builder",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Futurebuilderhandler(),
    );
  }
}


class Futurebuilderhandler extends StatefulWidget {
  @override
  State<Futurebuilderhandler> createState() => _FuturebuilderhandlerState();
}

class _FuturebuilderhandlerState extends State<Futurebuilderhandler> {

  //Future Builder sürekli tetiklenmesin diye init anında sanki sql den veri çeker gibi run edelim. Karışma olmaz defalarca tetiklenmez bu şekilde.
  late Future<String> _future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _future = getResult();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
      ),

      //Future Builder gelecekteki verileri kapmak içindir.

      body: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {  // Snapshot ile durum kontrolü
          // Yükleniyor durumu ve isaret cikartir.
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          // Hata durumu
          else if (snapshot.hasError) {
            return Center(child: Text('Hata: ${snapshot.error}'));
          }
          // Veri geldi durumu
          else if (snapshot.hasData) {
            return Center(child: Text('Veri: ${snapshot.data}'));
          }
          // Boş durum
          else {
            return Center(child: Text('Henüz bir şey yok'));
          }
        },

      ),
    );
  }
}

Future<String> getResult() async {
  print("Future calistirildi!");
  await Future.delayed(Duration(seconds: 5));
  return "Sonuc Alindi!";
}
