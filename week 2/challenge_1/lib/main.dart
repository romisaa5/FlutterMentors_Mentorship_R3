import 'package:challenge_1/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Challenge1());
}

class Challenge1 extends StatelessWidget {
  const Challenge1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: false,
        colorScheme: ColorScheme.light(primary: Colors.blue),
        dialogTheme: DialogThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
