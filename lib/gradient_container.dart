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
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                
                "assets/images/dice-1.png",
                width: 300,
              ),
              // const SizedBox(height:20),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                    top:20,
                  ),
                  foregroundColor: Colors.lime,
                  textStyle: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                child: Text("Roll Dice"),
              ),
            ],
          ),
        ),
      );
  }
}