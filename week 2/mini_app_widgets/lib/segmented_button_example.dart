import 'package:flutter/material.dart';

class SegmentedButtonExample extends StatefulWidget {
  const SegmentedButtonExample({super.key});

  @override
  State<SegmentedButtonExample> createState() => _SegmentedButtonExampleState();
}

class _SegmentedButtonExampleState extends State<SegmentedButtonExample> {
  Set<String> selectedOptions = {'Medium'};

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SegmentedButton<String>(
        segments: const <ButtonSegment<String>>[
          ButtonSegment(value: 'Small', label: Text('Small')),
          ButtonSegment(value: 'Medium', label: Text('Medium')),
          ButtonSegment(value: 'Large', label: Text('Large')),
        ],
        selected: selectedOptions,
        onSelectionChanged: (Set<String> newSelection) {
          Future.microtask(() {
            setState(() {
              selectedOptions = newSelection;
            });
          });
        },
        showSelectedIcon: true,
        multiSelectionEnabled: true,
      ),
    );
  }
}
