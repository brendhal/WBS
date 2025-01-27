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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              //first audio
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  final AudioPlayer player = AudioPlayer();
                  player.play(AssetSource('note1.wav'));
                },
                child: const Text(
                  ' ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //second audio
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                ),
                onPressed: () {
                  final AudioPlayer player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                child: const Text(
                  ' ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //third audio
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.limeAccent,
                ),
                onPressed: () {
                  final AudioPlayer player = AudioPlayer();
                  player.play(AssetSource('note3.wav'));
                },
                child: const Text(
                  ' ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //fourth audio
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                ),
                onPressed: () {
                  final AudioPlayer player = AudioPlayer();
                  player.play(AssetSource('note4.wav'));
                },
                child: const Text(
                  ' ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //fifth audio
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                ),
                onPressed: () {
                  final AudioPlayer player = AudioPlayer();
                  player.play(AssetSource('note5.wav'));
                },
                child: const Text(
                  ' ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //sixth audio
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  final AudioPlayer player = AudioPlayer();
                  player.play(AssetSource('note6.wav'));
                },
                child: const Text(
                  ' ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //seventh audio
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  final AudioPlayer player = AudioPlayer();
                  player.play(AssetSource('note7.wav'));
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
