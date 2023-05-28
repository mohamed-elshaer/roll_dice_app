import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled-text.dart';

class GradientContainer extends StatefulWidget {
  GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var currentDiceRoll = 2;
  // var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: widget.colors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: rollDice,
            child: StyledText('Roll Dice'),
          )
        ],
      )),
    );
  }
}
