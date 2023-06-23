import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradient, {super.key});
  final List<Color> gradient;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
              height: 200,
            ),
            ElevatedButton(
              onPressed: RollDice,
              child: const Text('Click me'),
            )
          ],
        ),
      ),
    );
  }

  void RollDice() {}
}
