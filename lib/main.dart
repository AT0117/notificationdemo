import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:notificationdemo/home.dart';

void main() {
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelKey: 'scheduled_key',
      channelName: 'Scheduled Notification',
      channelDescription: 'Dinner Notification',
      importance: NotificationImportance.High,
    ),
  ]);
  runApp(NotificationDemo());
}

class NotificationDemo extends StatefulWidget {
  const NotificationDemo({super.key});

  @override
  State<NotificationDemo> createState() => _NotificationDemoState();
}

class _NotificationDemoState extends State<NotificationDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Notification Demo',
      home: HomePage(),
    );
  }
}
