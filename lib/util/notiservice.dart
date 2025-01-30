import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:vibration/vibration.dart';  // Import vibration package

class MyNotifications {
  final notificationPlugin = FlutterLocalNotificationsPlugin();

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  //____________________initialize the notification plugin____________________//
  Future<void> initNotification() async {
    if (_isInitialized) return;

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    final DarwinInitializationSettings initializationSettingsDarwin =
        const DarwinInitializationSettings();
    final LinuxInitializationSettings initializationSettingsLinux =
        const LinuxInitializationSettings(defaultActionName: 'Open notification');
    final InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwin,
        macOS: initializationSettingsDarwin,
        linux: initializationSettingsLinux);

    await notificationPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) {
        // Handle notification response
      },
    );

    _isInitialized = true; // Mark initialization as complete
  }

  //___show notification with sound and vibration____//
  Future<void> showNotification({
    int id = 0,
    String? title,
    String? body,
  }) async {
    // Trigger vibration (optional)
    if ((await Vibration.hasVibrator()) ?? false) {
      Vibration.vibrate(duration: 500); // 500ms vibration duration
    }

    return notificationPlugin.show(
      id,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'channel id',
          'channel name',
          channelDescription: 'channel description',
          importance: Importance.max,
          priority: Priority.high,
          enableVibration: true,
          playSound: true,
          sound: RawResourceAndroidNotificationSound('notification'),  // Sound file with .wav extension
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
    );
  }
}
