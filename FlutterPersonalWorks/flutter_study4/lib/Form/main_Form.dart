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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  GlobalKey<FormState> formKey =GlobalKey<FormState>();
  TextEditingController tf1 = TextEditingController();
  TextEditingController tf2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [

                    //Use of TextFormField
                    TextFormField(
                      controller: tf1,
                      decoration: InputDecoration(
                        hintText: "User Name",
                      ),

                      //Getting value from TextFormField, if null everything can be accepted ok
                      validator: (message){
                        if(message!.isEmpty){
                          return "Please Enter User Name";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: tf2,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),

                      //Validator cases
                      validator: (message){

                        if(message!.isEmpty){
                          return "Please Enter Password";
                        }

                        if(message.length < 6){
                          return "Password length should be greater than 6";
                        }

                        if(message.length > 12) {
                          return "Password length should be less than 12";
                        }

                        return null;

                      },
                    ),
                    ElevatedButton(
                      onPressed: (){

                        //currentState is not null then run validate if null then return select false.
                        if(formKey.currentState?.validate() ?? false){

                          String userName = tf1.text;
                          String password = tf2.text;

                          print("User Name: $userName");
                          print("Password: $password");

                        }

                      },
                      child: Text("Log In"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
