import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
        body: GradientContainer(
          Colors.white,
          Colors.blue,
          Colors.red,
        ),
      )),
    ),
  );
}
