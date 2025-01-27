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

  Expanded buildKey({required Color colors, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colors,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(2),
            ),
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('SOUND BARS'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colors: Colors.redAccent, soundNumber: 1),
              buildKey(colors: Colors.yellowAccent, soundNumber: 2),
              buildKey(colors: Colors.tealAccent, soundNumber: 3),
              buildKey(colors: Colors.indigoAccent, soundNumber: 4),
              buildKey(colors: Colors.purpleAccent, soundNumber: 5),
              buildKey(colors: Colors.cyanAccent, soundNumber: 6),
              buildKey(colors: Colors.limeAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
