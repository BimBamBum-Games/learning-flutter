import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notification App',
      debugShowCheckedModeBanner: false,
      color: Colors.lightBlue,
      home: MyHomePage(),
    );
  }
}


//First configure permissions.

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Add plug-in
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> setupNotifications() async {

    //Android Notification Permission Android 13+ and ++
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()?.requestNotificationsPermission();

    //Android permission for TZ alarms and mandatory.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.requestExactAlarmsPermission();

    //Android and IOS bake settings.
    AndroidInitializationSettings androidInitConfig =  AndroidInitializationSettings("@mipmap/ic_launcher");
    DarwinInitializationSettings iosInitConfig = DarwinInitializationSettings();

    //Add the settings in Initialization.
    InitializationSettings initConfig = InitializationSettings(android: androidInitConfig, iOS: iosInitConfig);

    //Wait for plug-in initialization.
    await flutterLocalNotificationsPlugin.initialize(
        initConfig,
        onDidReceiveNotificationResponse: receiveNotificationResponse
    );
  }

  //Callback for getting response payload
  void receiveNotificationResponse(NotificationResponse nr){
    print("Payload: ${nr.payload}");
  }

  //Test Notification
  Future<void> showNotification() async {

    print("Show Notification Trigger!");

    //Prepare Android Notification Details
    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      "Channel Id", "Channel Name", channelDescription: "Channel Description", priority: Priority.max, importance: Importance.max
    );

    //Prepare IOS Notification Details
    DarwinNotificationDetails iosNotificationDetails = DarwinNotificationDetails();

    //Bake Notification Details
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails, iOS: iosNotificationDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      0, "Notification Title", "Notification Body", notificationDetails,
      payload: "Notification Payload");
  }

  //Test Notification
  Future<void> showDelayedNotification() async {

    print("Show Notification Trigger!");

    //Prepare Android Notification Details
    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        "Channel Id", "Channel Name", channelDescription: "Channel Description", priority: Priority.max, importance: Importance.max
    );

    //Prepare IOS Notification Details
    DarwinNotificationDetails iosNotificationDetails = DarwinNotificationDetails();

    //Bake Notification Details
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails, iOS: iosNotificationDetails,
    );

    //Run TZ to initialize timezones
    tz.initializeTimeZones();

    //Get current time from local timezone and create duration in 5 seconds
    tz.TZDateTime tzDateTimeDuration = tz.TZDateTime.now(tz.local).add(const Duration(seconds: 10));

    await flutterLocalNotificationsPlugin.zonedSchedule(
        0, "Delayed Notification Title",
        "Timed Notification",
        tzDateTimeDuration,
        notificationDetails,

        //Here to show on locked screen. For Android 13, 14 ++ Timer, Clock Calendar etc exactAllowWhileIdle otherwise it will be locked according to Google Play.
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        //Daylight saving or absolute and always select absolute.
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        payload: "Notification Payload"
    );
  }

  @override
  void initState() {
    super.initState();

    //Run notification
    setupNotifications();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueAccent,

        title: Text("Notification App"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            SizedBox(
              width: 200, height: 75,
              child: ElevatedButton(
                onPressed: (){
                  showNotification();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),
                child: Text("Notification With Delay", style: TextStyle(fontSize: 14)),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            SizedBox(
              width: 200, height: 75,
              child: ElevatedButton(
                onPressed: (){
                  showDelayedNotification();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent
                ),
                child: Text("Notification With Delay", style: TextStyle(fontSize: 14)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
