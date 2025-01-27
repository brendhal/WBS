import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const SoundKeys());
}

class SoundKeys extends StatelessWidget {
  const SoundKeys({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.amberAccent,
                ),
                Center(child: Text(nouns.last)),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.indigoAccent,
                  child: Text(nouns.first),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
