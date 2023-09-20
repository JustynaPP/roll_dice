import 'package:flutter/material.dart';
import 'package:roll_dice/roller.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 170, 186, 255),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 170, 186, 255)),
        child: const Roller(),
      ),
    );
  }
}
