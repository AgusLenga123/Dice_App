import "dart:math";
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-1.png";

  void rollDice() {
    var diceRolling = randomizer.nextInt(6) + 1; // random num from 1 to 6
    // set state = re exectue the UI, to update the image
    setState(
      () {
        activeDiceImage =
            "assets/images/dice-$diceRolling.png"; // changing the image generated by updating randomly the path
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      // hold widgets in a same column
      mainAxisSize: MainAxisSize.min, // adjust the column space usage
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 30), // space between widgets
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}