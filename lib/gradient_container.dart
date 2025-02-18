import 'package:flutter/material.dart';
import 'dart_roller.dart'; // Import DiceRoller

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startAlignment, this.endAlignment, {super.key});

  final Alignment startAlignment;
  final Alignment endAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: const [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 9, 1, 24),
          ],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
