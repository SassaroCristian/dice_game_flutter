import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceWidget extends StatefulWidget {
  const DiceWidget(
      {super.key}); // Constructor for DiceWidget with an optional key parameter
  @override
  _DiceWidgetState createState() =>
      _DiceWidgetState(); // Creating the state for the DiceWidget
}

class _DiceWidgetState extends State<DiceWidget> {
  int currentDiceRoll =
      6; // Initializing the variable to store the current dice roll

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +
          1; // Generating a random number between 1 and 6 (inclusive) for the dice roll
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png', // Displaying the image of the dice based on the current dice roll
          width: 300,
        ),
        // alternative method of creating empty space between 2 widgets
        // const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ElevatedButton(
            onPressed:
                rollDice, // Assigning the rollDice function to the onPressed event of the ElevatedButton
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors
                  .deepPurple, // Setting the background color of the button
              foregroundColor: Colors
                  .lightGreenAccent, // Setting the text color of the button
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text(
                'Roll the dice'), // Displaying the text 'Roll the dice' on the button
          ),
        ),
      ],
    );
  }
}
