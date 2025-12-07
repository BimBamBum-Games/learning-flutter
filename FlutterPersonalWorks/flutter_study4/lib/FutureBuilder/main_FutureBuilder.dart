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

  String selectedUser = "";

  //Fake delay method to simulate remote connection.
  Future<List<String>> waitForDatabaseQuery() async{
    List<String> users = ["Haluk", "Simge", "Tolga", "Helin", "Pelin", "Orkun", "Veronica"];
    await Future.delayed(Duration(seconds: 3));
    return users;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedUser = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("FutureBuilder App", style: TextStyle(color: Colors.white)),
      ),

      //FutureBuilder takes future method and builds accordingly
      body: Center(
        child: Column(
          children: [
            Text(selectedUser),
            FutureBuilder(
                future: waitForDatabaseQuery(),
                builder: (buildContext, snapshot) {

                  if(snapshot.hasData) {
                    //Expanded or SizedBox must be added to avoid unbound height problems.
                    return Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (c, i) {
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedUser = snapshot.data![i];
                              });
                            },
                            child: Card(
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(snapshot.data![i]),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }else{
                    //If has no data return empty container.

                    return Center(child: CircularProgressIndicator());
                  }
                }
            ),
          ],
        ),
      )
    );
  }
}
