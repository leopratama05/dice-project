import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  // Variable baru
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;

  get onPressed => null;

  // Function merubah angka dadu
  void pencetDadu() {
    setState(() {
      leftDiceNumber = Random().nextInt(5) + 1;
      rightDiceNumber = Random().nextInt(5) + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Project dadu by Leo'),
        backgroundColor: Colors.teal[900],
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  pencetDadu();
                },
                child: Image.asset('images/Alea_$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    pencetDadu();
                  },
                  child: Image.asset('images/Alea_$rightDiceNumber.png')),
            )
          ],
        ),
      ),
    );
  }
}
