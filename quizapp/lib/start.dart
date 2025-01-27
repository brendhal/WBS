import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizNa(),
        ),
      ),
    ));
  }
}

class QuizNa extends StatefulWidget {
  const QuizNa({super.key});

  @override
  State<QuizNa> createState() => _QuizNaState();
}

class _QuizNaState extends State<QuizNa> {
  List<Icon> scorekeeper = [
    Icon(
      Icons.check,
      color: Colors.greenAccent,
    ),
    Icon(
      Icons.close,
      color: Colors.redAccent,
    ),
  ];

  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[0],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            child: Text(
              'True',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              setState(() {
                scorekeeper.add(Icon(
                  Icons.check,
                  color: Colors.greenAccent,
                ));
              });
              // You can add more functionality, such as navigating to another screen, updating a variable, etc.
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            child: Text(
              'False',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              // Handle the button press here
              print('The user picked false.');
              // You can add more functionality, such as navigating to another screen, updating a variable, etc.
            },
          ),
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}
