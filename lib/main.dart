import "package:flutter/material.dart";
import "package:roll_a_dice/gradient_box.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //,
        body: GradientBox(
          Color.fromARGB(255, 0, 65, 101),
          Color(0xff006094),
        ),
      ),
    ),
  );
}
