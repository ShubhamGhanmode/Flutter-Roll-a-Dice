import "package:flutter/material.dart";
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentRoll = 2;
  void change(){
    setState(() {
      currentRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$currentRoll.png', width: 120,),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: change,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 119, 36, 50),
                textStyle: const TextStyle(fontSize: 25),
              ),
              child: const Text("Roll the Dice"),
            ),
          ],
        );
  }
}