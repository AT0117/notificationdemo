import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> scheduledNotifications() async {
  String localTimeZone = await AwesomeNotifications()
      .getLocalTimeZoneIdentifier();
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 1,
      channelKey: 'scheduled_key',
      title: 'Dinner Reminder',
      body: 'It is 7:30 PM, Time for Dinner!',
    ),
    schedule: NotificationCalendar(
      hour: 19,
      minute: 40,
      second: 0,
      timeZone: localTimeZone,
      repeats: true,
    ),
  );
}
