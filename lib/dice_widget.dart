import 'package:flutter/material.dart';

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});
  @override
  _DiceWidgetState createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  String activeDiceFace = 'assets/images/dice-4.png';

  void rollDice() {
    setState(() {
      activeDiceFace = 'assets/images/dice-1.png';
    });
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
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.lightGreenAccent,
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('Roll the dice'),
          ),
        ),
      ],
    );
  }
}
