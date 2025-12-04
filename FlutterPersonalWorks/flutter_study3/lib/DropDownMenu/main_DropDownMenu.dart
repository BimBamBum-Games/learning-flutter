import 'package:flutter/material.dart';

void main(){
  runApp(DropDownMenuApp());
}


class DropDownMenuApp extends StatefulWidget {
  const DropDownMenuApp({super.key});

  @override
  State<DropDownMenuApp> createState() => _DropDownMenuAppState();
}

class _DropDownMenuAppState extends State<DropDownMenuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DropDownMenu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MainMenu()
    );
  }
}

class MainMenu extends StatefulWidget {
  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  List<String> countries = <String>[];

  //En az biriyle tam eslesmesi lazim yoksa kirmizi ekran atar.
  String? lastSelectedValue = "Turkey";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    countries.add("Turkey");
    countries.add("Germany");
    countries.add("England");
    countries.add("Japan");
    countries.add("China");
    countries.add("The United States");
    countries.add("Ireland");

    print("Countries: $countries");
    print("Countries Count: ${countries.length}");

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
            children: [
              //DropdownButton ve DropdownButtonItem.
              DropdownButton<String>(

                value: lastSelectedValue,

                items: countries.map<DropdownMenuItem<String>>((String value) {

                  //Donus generic tipini vermeden de flutter donus tipini DropdownMenuItem olarak kabul eder.

                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),

                onChanged: (String? newValue){
                  setState(() {
                    lastSelectedValue = newValue;
                  });

                },
              ),

              //Son secilen veriyi hem ekranda yazdir hem de console da yazdir.
              Text("Selected Country: $lastSelectedValue"),
              ElevatedButton(
                child: Text("Print Last Selected Value"),
                onPressed: (){
                  print("Last Selected Value: $lastSelectedValue");
                },
              ),
            ]
          )
      ),
    );
  }
}
