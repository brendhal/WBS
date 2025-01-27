import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';

void main() {
  runApp(EnglishWordApp());
}

class EnglishWordApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: WordGeneratorPage(),
    );
  }
}

class WordGeneratorPage extends StatefulWidget {
  @override
  _WordGeneratorPageState createState() => _WordGeneratorPageState();
}

class _WordGeneratorPageState extends State<WordGeneratorPage> {
  String englishWord1 = '';
  String englishWord2 = '';
  int number1 = 0;
  int number2 = 0;

  void _generateWords() {
    final random = Random();
    final wordList = all;

    number1 = random.nextInt(wordList.length);
    number2 = random.nextInt(wordList.length);

    englishWord1 = wordList[number1];
    englishWord2 = wordList[number2];

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAB 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WHAT'S THE ENGLISH WORD?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('English1:'),
                Expanded(
                  child: Text(
                    englishWord1,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('English2:'),
                Expanded(
                  child: Text(
                    englishWord2,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _generateWords,
              child: Text('RANDOMIZE'),
            ),
            SizedBox(height: 30),
            Text(
              'ARRAY NUMBER',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Number 1: $number1'),
                Text('Number 2: $number2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
