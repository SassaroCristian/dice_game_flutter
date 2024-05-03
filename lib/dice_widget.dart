import 'package:flutter/material.dart';

class DiceWidget extends StatefulWidget {
  DiceWidget({super.key});

  String activeDiceFace = 'assets/images/dice-1.png';

  rollDice() {
    activeDiceFace = 'assets/images/dice-3.png';
    print('I should change the dice face');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceFace,
          width: 300,
        ),
        // alternative method of creating empty space between 2 widgets
        // const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  backgroundColor: color1,
                  foregroundColor: color2,
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              child: const Text('Roll the dice')),
        )
      ],
    );
  }
}
