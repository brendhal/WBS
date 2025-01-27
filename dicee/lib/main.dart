import 'package:flutter/material.dart';

void main() {
  return runApp(const DicePage());
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    // int leftDiceNumber = 5;

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
                // Expanded(
                //   // flex: 1,
                //   child: Padding(
                //     padding: const EdgeInsets.all(16.0),
                //     child: TextButton(
                //       onPressed: () {
                //         print("Left button got presssed");
                //       },
                //       child:
                //           Image.asset('assets/images/dice$leftDiceNumber.png'),
                //     ),
                //   ),
                // ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                      image: AssetImage('assets/images/dice1.png'),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
