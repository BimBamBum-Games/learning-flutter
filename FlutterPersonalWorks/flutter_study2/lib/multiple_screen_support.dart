import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Program'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//Bu canvas layout classi olacak
class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
    print("Program initiated!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
          
        LayoutBuilder(builder: (ct, c) {

          if(c.maxWidth < 600){
            print("Mobile Constrait MaxWidth: ${c.maxWidth}");
            return MobilePhoneMode();
          }else{
            print("Tablet Constrait MaxWidth: ${c.maxWidth}");
            return TabletMode();
          }

        } )

    );
    
    
    
    
    
  }
}


//Bu classlar ile tablet ve mobile icin gorsellerimizi stokladik. Widget dondururler.
class MobilePhoneMode extends StatelessWidget {
  const MobilePhoneMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("VisualElements/btc@2.png"),
            Text("BTC TABLET"),
          ],
        )
    );
  }
}

class TabletMode extends StatelessWidget {
  const TabletMode({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("VisualElements/btc@1.png"),
              Text("BTC TABLET"),
            ],
          )
      );
  }
}
