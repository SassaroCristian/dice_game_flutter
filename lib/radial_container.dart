import 'package:flutter/material.dart';
import 'package:dice_game_flutter/dice_widget.dart';

class RadialContainer extends StatelessWidget {
  const RadialContainer(this.color1, this.color2, {super.key});
  // const RadialContainer.purple({super.key}) : color1 = Colors.deepPurple, color2 = Colors.deepPurpleAccent;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [color1, color2],
          radius: 1.3,
        ),
      ),
      child: const Center(child: DiceWidget()),
    );
  }
}
