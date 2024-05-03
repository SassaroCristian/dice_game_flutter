import 'package:flutter/material.dart';
import 'package:dice_game_flutter/radial_container.dart'; // Importing the RadialContainer class from another file

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: RadialContainer(
            // Creating an instance of RadialContainer
            Color.fromARGB(255, 41, 254, 77),
            Color.fromARGB(255, 102, 47,
                255)), // Passing color parameters to RadialContainer constructor
        // RadialContainer.purple(), // An alternative way to create a RadialContainer with predefined colors
      ),
    ),
  );
}
