import 'package:challenge_2/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Challenge2());
}

class Challenge2 extends StatelessWidget {
  const Challenge2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
