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
      home: const MyHomePage(title: 'Cook Hand Book'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    MediaQueryData mqd = MediaQuery.of(context);
    final double w = mqd.size.width;
    final double h = mqd.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text(
            widget.title,
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [

            Expanded(
              flex: 1,
              child: Container(),
            ),

            Expanded(
              flex: 90,
              child: Column(
                children: [

                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),

                  Expanded(
                      flex: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            "CookHandBookUI/cookpage.jpeg",
                            fit: BoxFit.cover,
                        ),
                      ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),

                  Expanded(
                    flex: 90,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),

                  Expanded(
                    flex: 15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 49,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Previous"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),

                        Expanded(
                          flex: 49,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Next"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(),
            ),

          ],
        ),
      )
    );
  }
}
