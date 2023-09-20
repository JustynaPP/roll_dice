import 'dart:math';

import 'package:flutter/material.dart';

class Roller extends StatefulWidget {
  const Roller({Key? key}) : super(key: key);

  @override
  State<Roller> createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  var currentDiceValue = 'assets/images/1.png';

  void rollDice() {
    var roll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceValue = 'assets/images/$roll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(currentDiceValue),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 25,
              ),
            ),
            child: const Text(
              'Roll Dice',
            ),
          ),
        ],
      ),
    );
  }
}
