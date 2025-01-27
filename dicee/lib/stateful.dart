import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(const DicePage());
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: [
                //manual random
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          leftDiceNumber = 2;
                        });
                        print("Left button got presssed");
                      },
                      child:
                          Image.asset('assets/images/dice$leftDiceNumber.png'),
                    ),
                  ),
                ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.all(16.0),
                //     child: TextButton(
                //       onPressed: () {
                //         setState(() {
                //           leftDiceNumber = Random().nextInt(6) + 1;
                //         });
                //         print("Left button got presssed");
                //       },
                //       child:
                //           Image.asset('assets/images/dice$leftDiceNumber.png'),
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.all(16.0),
                //     child: TextButton(
                //       onPressed: () {
                //         setState(() {
                //           leftDiceNumber = 2;
                //         });
                //         print("Left button got presssed");
                //       },
                //       child:
                //           Image.asset('assets/images/dice$leftDiceNumber.png'),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
