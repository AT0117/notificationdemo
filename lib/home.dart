import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:notificationdemo/modules/local_fixed.dart';
import 'package:notificationdemo/modules/local_scheduled.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    initializeNotification();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showNotification();
              },
              child: Text('Trigger Notification'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                scheduledNotifications();
              },
              child: Text('Schedule Notification (7:30 PM)'),
            ),
          ],
        ),
      ),
    );
  }
}
