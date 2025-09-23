import 'package:challenge_3/loading_dots.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Challenge3());
}

class Challenge3 extends StatelessWidget {
  const Challenge3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [LoadingDots()],
        ),
      ),
    );
  }
}
