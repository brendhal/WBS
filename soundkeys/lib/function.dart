import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SoundKeys());
}

class SoundKeys extends StatefulWidget {
  const SoundKeys({super.key});

  @override
  State<SoundKeys> createState() => _SoundKeysState();
}

class _SoundKeysState extends State<SoundKeys> {
  void playSound(int soundNumber) {
    final AudioPlayer player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //first audio
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.tealAccent,
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: const Text(
                    ' ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              //second audio
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                  child: const Text(
                    ' ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              //third audio
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.limeAccent,
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                  child: const Text(
                    ' ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              //fourth audio
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.indigoAccent,
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                  child: const Text(
                    ' ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              //fifth audio
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                  child: const Text(
                    ' ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              //sixth audio
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                  child: const Text(
                    ' ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              //seventh audio
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  playSound(7);
                },
                child: const Text(
                  ' ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Rectangular
              // Expanded(
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       backgroundColor: Colors.amberAccent,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.all(
              //           Radius.circular(2),
              //         ),
              //       ),
              //     ),
              //     onPressed: () {
              //       playSound(1);
              //     },
              //     child: Container(),
              //   ),
              // ),