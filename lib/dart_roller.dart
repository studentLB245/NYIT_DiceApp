import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
    print('Rolling dice...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Welcome to ITEC 315",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),

        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),

        const SizedBox(height: 20),

        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurpleAccent,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Roll the Die"),
        ),
      ],
    );
  }
}
