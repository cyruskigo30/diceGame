import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: const Text('Play Dice'),
        ),
        body: const PlayDice(),
      ),
    ),
  );
}

class PlayDice extends StatefulWidget {
  const PlayDice({Key? key}) : super(key: key);

  @override
  _PlayDiceState createState() => _PlayDiceState();
}

class _PlayDiceState extends State<PlayDice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void diceClickChanger() {
    setState(
      () {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Click on any of the dice to play',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontFamily: 'Palatino',
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      diceClickChanger();
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      diceClickChanger();
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
