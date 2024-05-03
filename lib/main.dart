import 'package:flutter/material.dart';
import 'package:dice_game_flutter/radial_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: RadialContainer(
            Color.fromARGB(255, 41, 254, 77), Colors.deepPurpleAccent),
        // alternative way of setting the colors using another constructor
        // RadialContainer.purple(),
      ),
    ),
  );
}
