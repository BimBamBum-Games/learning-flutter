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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DateTimePicker(),
    );
  }
}

class DateTimePicker extends StatefulWidget {
  @override
  State<DateTimePicker> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DateTimePicker> {

  TextEditingController timeTec = TextEditingController();
  TextEditingController dateTec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(child: Container()),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: timeTec,
                    decoration: InputDecoration(
                      hintText: "Saat Giriniz.",
                      suffixIcon: Icon(Icons.date_range),
                    ),
                    onTap: () {
                      showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(DateTime.now())
                      ).then((time) {
                        //Nullable kismi olmasi gerek yoksa hata verir.
                        setState(() {
                          timeTec.text = "${time?.hour} : ${time?.minute}";
                        });
                      });
                    },
                  ),


                  TextField(
                    controller: dateTec,
                    decoration: InputDecoration(
                      hintText: "Tarih Giriniz.",
                      suffixIcon: Icon(Icons.date_range),
                    ),
                    onTap: () {
                      //Bu timedan biraz farkli olarak daha kolay.
                      showDatePicker(
                          context: context,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050),
                          initialDate: DateTime.now(),
                      ).then((time) {
                        //Nullable kismi olmasi gerek yoksa hata verir.
                        setState(() {
                          String date = "${time?.day} / ${time?.month} / ${time?.year}";
                        });
                      });
                    },
                  ),

                ],
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
