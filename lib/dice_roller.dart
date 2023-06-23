import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      activeDice = 'assets/images/dice-2.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 200,
          height: 200,
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: const Text('Click me'),
        )
      ],
    );
  }
}
