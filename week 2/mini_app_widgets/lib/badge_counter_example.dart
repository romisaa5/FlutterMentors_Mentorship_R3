import 'package:flutter/material.dart';

class BadgeCounterExample extends StatefulWidget {
  const BadgeCounterExample({super.key});

  @override
  State<BadgeCounterExample> createState() => _BadgeCounterExampleState();
}

class _BadgeCounterExampleState extends State<BadgeCounterExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        iconSize: 60,
        onPressed: _incrementCounter,
        icon: Badge(
          label: Text('$_counter'),
          child: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}
