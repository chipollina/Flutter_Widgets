import 'package:flutter/material.dart';
import 'styled_text.dart';
const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;
class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  const GradientContainer(
    this.color1,
    this.color2,
    this.color3,
    {super.key,
    });
  void rollDice() {}
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.blue,
              Colors.red,
            ],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/dice-1.png",
                width: 300,
              ),
              TextButton(
                onPressed: rollDice,
                child: Text("Roll Dice"),
              ),
            ],
          ),
        ),
      );
  }
}