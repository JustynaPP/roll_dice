import 'package:flutter/material.dart';
import 'package:roll_dice/dice_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 170, 186, 255),
        title: const Text('Roll Your Dice'),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 170, 186, 255)),
        child: Center(
          child: OutlinedButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DiceScreen(),
              ));
            },
            icon: const Icon(Icons.casino_rounded),
            label: const Text('Let\'s start'),
          ),
        ),
      ),
    );
  }
}
