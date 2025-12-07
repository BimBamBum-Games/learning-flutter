import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<List<Item>> waitForDatabaseQuery() async{
    List<Item> items = <Item>[];

    Item i0 = Item(0, "Axe", 3300, "axe.png");
    Item i1 = Item(1, "Sword", 4600, "sword.png");
    Item i2 = Item(2, "Armor", 25, "armor.png");
    Item i3 = Item(3, "Belts", 1100, "belts.png");
    Item i4 = Item(4, "Gem", 1250, "gem.png");
    Item i5 = Item(5, "Shield", 3000, "shield.png");

    items.add(i0);
    items.add(i1);
    items.add(i2);
    items.add(i3);
    items.add(i4);
    items.add(i5);

    return items;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Inventory App"),
      ),
      body: FutureBuilder(

        //Cacth here with delay simulator
        future: waitForDatabaseQuery(),

        //Result will be caught, and widget returns getter, template
        builder: (cnt, snp) {
          if(snp.hasData) {

            List<Item> futured_items = snp.data!;

            return ListView.builder(
              itemCount: futured_items.length,
              itemBuilder: (context, i) {
                return GestureDetector(

                  onTap: (){
                    print("${futured_items[i].Name} Clicked!");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Inspector(item: futured_items[i])));
                  },

                  child: Card(
                    color: Colors.lightBlueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset("lib/ItemSelectionWithCard/RpgItemIcons/${futured_items[i].spriteName}")),
                  
                          SizedBox(width: 20),
                  
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(futured_items[i].Name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),),
                              Text("${futured_items[i].price} \u{20BA}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                            ]
                          ),
                  
                          Spacer(),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                );
              }

            );
          }else{
            //If no dota then empty container.
            return Container();
          }
        }
      ),
    );
  }
}


class Inspector extends StatefulWidget {

  Item item;

  Inspector({required this.item});

  @override
  State<Inspector> createState() => _InspectorState();
}

class _InspectorState extends State<Inspector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Inspector"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 300, height: 300,
                child: Image.asset("lib/ItemSelectionWithCard/RpgItemIcons/${widget.item.spriteName}")),
            Text("Item Id: ${widget.item.Id}", style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black)),
            Text("Item Name: ${widget.item.Name}", style: TextStyle(fontSize: 28, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black)),
            Text("Price: ${widget.item.price}", style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(
              width: 200, height: 75,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Select Item", style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Item{
  int Id;
  String Name;
  double price;
  String spriteName;

  Item(this.Id, this.Name, this.price, this.spriteName);

}
