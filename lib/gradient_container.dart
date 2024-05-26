import "package:dice_app/dice_roller.dart";
import "package:flutter/material.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Constructor: (used for optimization + ensure that the values are fowarded correctly)
  const GradientContainer(this.colorsList, {super.key});

  final List<Color> colorsList;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorsList, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
