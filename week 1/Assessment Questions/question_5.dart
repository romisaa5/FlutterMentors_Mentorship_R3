abstract class Notifier {
  void send(String message);
}

class LocalNotificationService implements Notifier {
  @override
  void send(String message) {
    print('Sending local notification: $message');
  }
}

class AppNotifier {
  final Notifier service;

  AppNotifier(this.service);

  void notifyUser(String message) {
    service.send(message);
  }
}

void main() {
  final notifier = AppNotifier(LocalNotificationService());
  notifier.notifyUser("Welcome to the app!");
}
