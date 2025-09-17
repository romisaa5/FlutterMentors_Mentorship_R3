/*
abstract class Navigable {
  void navigate();
}


class HomeScreen implements Navigable {
  @override
  void navigate() {
    print('Navigating to home');
  }
}

class SettingsScreen {
  void openSettings() {
    print('Opening settings...');
  }
}


class NavigationButton extends StatelessWidget {
  final Navigable screen;
  NavigationButton(this.screen);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => screen.navigate(),
      child: Text('Navigate'),
    );
  }
}
*/