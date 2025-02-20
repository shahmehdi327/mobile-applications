import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceRollMain());
}

class DiceRollMain extends StatelessWidget {
    const DiceRollMain({super.key});

    @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: DiceRoll(),);
  }
}
//end MaterialApp

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
var diceNumber = 1;
var diceNumber2 = 1; 
var output = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roll",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: TextButton(
          onPressed: () => setState(() {
            //Random.NextInt(n) returns a random value between 0 and n-1
            diceNumber = Random().nextInt(6) + 1;
            diceNumber2 = Random().nextInt(6) + 1;
            output = diceNumber + diceNumber2;
          }),
          child: Column(
            children: [
              Image.asset("images/dice-$diceNumber.png", height: 300,width:300),
              Image.asset("images/dice-$diceNumber2.png", height: 300,width:300),
              Text("total of both = [$output]")

            ],
          )
        )
      ),
    );
  }

  
}