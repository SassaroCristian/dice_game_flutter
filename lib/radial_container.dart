import 'package:flutter/material.dart';
import 'package:dice_game_flutter/dice_widget.dart'; // Importing the DiceWidget class from another file

class RadialContainer extends StatelessWidget {
  const RadialContainer(this.color1, this.color2,
      {super.key}); // Constructor for RadialContainer with color parameters and an optional key parameter
  // const RadialContainer.purple({super.key}) : color1 = Colors.deepPurple, color2 = Colors.deepPurpleAccent; // An alternative constructor to create RadialContainer with predefined colors
  final Color color1; // First color for the radial gradient
  final Color color2; // Second color for the radial gradient

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [color1, color2], // Colors used for the radial gradient
          radius: 1.3, // Radius of the radial gradient
        ),
      ),
      child: const Center(
          child:
              DiceWidget()), // Centering the DiceWidget inside the RadialContainer
    );
  }
}
