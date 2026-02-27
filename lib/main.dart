import 'package:flutter/material.dart';
import 'package:notificationdemo/home.dart';

void main() {
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
