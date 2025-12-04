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

//Degisebilir cizilebilir eleman demek Stateful
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQueryData = MediaQuery.of(context);
    final double width = mediaQueryData.size.width;
    final double height = mediaQueryData.size.height;

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        //Scroll ile tuhaf gorsel bozukluklari giderilmis olunur ve scroll ozellik kazandidirilir.
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width * 0.25,
                child: Image.asset("LoginUI/logo.png")
              ),
              SizedBox(height: 20),
              SizedBox(
                    width: width * 0.90,
                    child: UserNameInputField()
              ),
          
              SizedBox(height: 5),
              SizedBox(
                    width: width * 0.90,
                    child: PassInputField()
              ),
          
              SizedBox(height: 20),
              SizedBox(
                width: width * 0.5,
                child: ElevatedButton(
                  onPressed: (){ print("Hi there");},
                  child: Text("Sign in"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  print("Contact Us!");
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )
                ),
              ),
            ]
          ),
        )
      ),
    );
  }
}

class UserNameInputField extends StatefulWidget {
  const UserNameInputField({super.key});

  @override
  State<UserNameInputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<UserNameInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          hintText: "User Name",
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        )
    );
  }
}

class PassInputField extends StatefulWidget {
  const PassInputField({super.key});

  @override
  State<PassInputField> createState() => _PassInputFieldState();
}

class _PassInputFieldState extends State<PassInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        )
    );
  }
}
