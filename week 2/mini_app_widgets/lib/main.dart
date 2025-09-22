import 'package:flutter/material.dart';
import 'package:mini_app_widgets/badge_counter_example.dart';
import 'package:mini_app_widgets/navigation_rail_example.dart';
import 'package:mini_app_widgets/segmented_button_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SegmentedButtonExample(),
            BadgeCounterExample(),
            NavigationRailExample(),
          ],
        ),
      ),
    );
  }
}
