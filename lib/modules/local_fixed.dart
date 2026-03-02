import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin notificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> initializeNotification() async {
  AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  InitializationSettings settings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await notificationsPlugin.initialize(settings: settings);
  notificationsPlugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >()
      ?.requestNotificationsPermission();
}

Future<void> showNotification() async {
  AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
    'demo_channel_id',
    'Notification Demo',
    channelDescription: 'Demo Notification',
    importance: Importance.max,
    priority: Priority.high,
  );
  NotificationDetails platformDetails = NotificationDetails(
    android: androidDetails,
  );
  await notificationsPlugin.show(
    id: 0,
    title: 'Hello From Flutter!',
    body: 'This is your first android Notification!',
    notificationDetails: platformDetails,
  );
}
