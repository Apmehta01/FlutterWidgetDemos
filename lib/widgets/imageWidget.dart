import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
var image = "";

class imageWidget extends StatefulWidget {
  const imageWidget(this.activeDiceImage, {super.key});

  final activeDiceImage;

  @override
  State<imageWidget> createState() {
    image = activeDiceImage;
    return _imageWidget();
  }
}

class _imageWidget extends State<imageWidget> {
  var activeDiceImage = image;

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 150,
        ),
        TextButton(
            onPressed: rollDice,
            child: Text('Roll Dice', style: TextStyle(fontSize: 20.0)),
            /*
            Material Button Property
            textColor: Colors.white,
            color: Colors.black,
            padding: const EdgeInsets.all(15.0),*/
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 30.0)))
      ],
    );
  }
}
