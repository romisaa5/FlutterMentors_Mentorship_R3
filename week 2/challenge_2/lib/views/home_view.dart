import 'package:challenge_2/widgets/show_snack_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Color> ballColors = [Colors.red, Colors.green, Colors.blue];

  final Map<Color, bool> matched = {
    Colors.red: false,
    Colors.green: false,
    Colors.blue: false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: ballColors.map((color) {
              return Draggable<Color>(
                data: color,
                feedback: _buildBall(color, 40),
                childWhenDragging: _buildBall(color.withValues(alpha: .3), 30),
                child: matched[color] == true
                    ? const SizedBox(width: 40, height: 40)
                    : _buildBall(color, 30),
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: ballColors.map((color) {
              return DragTarget<Color>(
                builder: (context, candidateData, rejectedData) {
                  bool isActive = candidateData.isNotEmpty;
                  return Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: matched[color] == true
                          ? color.withValues(alpha: 0.7)
                          : isActive
                          ? color.withValues(alpha: 0.4)
                          : Colors.grey.shade300,
                      border: Border.all(color: color, width: 3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: matched[color] == true
                        ? const Icon(Icons.check, color: Colors.white, size: 30)
                        : null,
                  );
                },
                onWillAcceptWithDetails: (data) => true,
                onAcceptWithDetails: (data) {
                  if (data.data == color) {
                    setState(() {
                      matched[color] = true;
                    });
                    showSuccessSnackBar(
                      context,
                      "Correct ! ${_colorName(color)} matched.",
                    );
                  } else {
                    showErrorSnackBar(
                      context,
                      "Oops ! ${_colorName(data.data)} doesn't match ${_colorName(color)}.",
                    );
                  }
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildBall(Color color, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }

  String _colorName(Color color) {
    if (color == Colors.red) return "Red";
    if (color == Colors.green) return "Green";
    if (color == Colors.blue) return "Blue";
    return "Unknown";
  }
}
