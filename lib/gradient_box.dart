import "package:flutter/material.dart";
import "package:roll_a_dice/dice_roller.dart";

class GradientBox extends StatelessWidget {
  const GradientBox(this.clr1, this.clr2, {super.key});
  final Color clr1;
  final Color clr2;
  void change() {
    //var img = Image.asset('assets/images/dice-2.png', width: 120,);
  }
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [clr1, clr2],
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
