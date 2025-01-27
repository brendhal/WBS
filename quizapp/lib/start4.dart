// import 'package:flutter/material.dart';
// import 'quiz_brain.dart';

// QuizBrain quizBrain = QuizBrain();

// void main() {
//   runApp(const QuizApp());
// }

// class QuizApp extends StatelessWidget {
//   const QuizApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       backgroundColor: Colors.grey.shade900,
//       appBar: AppBar(),
//       body: const SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 10.0),
//           child: QuizNa(),
//         ),
//       ),
//     ));
//   }
// }

// class QuizNa extends StatefulWidget {
//   const QuizNa({super.key});

//   @override
//   State<QuizNa> createState() => _QuizNaState();
// }

// class _QuizNaState extends State<QuizNa> {
//   List<Icon> scorekeeper = [];

//   int questionNumber = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Expanded(
//           flex: 5,
//           child: Padding(
//             padding: EdgeInsets.all(10.0),
//             child: Center(
//               child: Text(
//                 quizBrain.questionBank[questionNumber].questionText,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: TextButton(
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.greenAccent,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(20),
//                   ),
//                 ),
//               ),
//               child: Text(
//                 'True',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                 ),
//               ),
//               onPressed: () {
//                 bool correctAnswer =
//                     quizBrain.questionBank[questionNumber].questionAswer;
//                 if (correctAnswer == true) {
//                   print('user got it right');
//                 } else {
//                   print('user got it wrong');
//                 }
//                 setState(() {
//                   questionNumber++;
//                 });
//                 print(questionNumber);
//               }),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Expanded(
//           child: TextButton(
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.redAccent,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(20),
//                   ),
//                 ),
//               ),
//               child: Text(
//                 'False',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                 ),
//               ),
//               onPressed: () {
//                 bool correctAnswer =
//                     quizBrain.questionBank[questionNumber].questionAswer;
//                 if (correctAnswer == false) {
//                   print('user got it right');
//                 } else {
//                   print('user got it wrong');
//                 }
//                 setState(() {});
//                 print(questionNumber);
//               }),
//         ),
//         Row(
//           children: scorekeeper,
//         )
//       ],
//     );
//   }
// }
// /*
// question1: 'You can lead a cow down stairs but not up stairs.' false,
// question2: 'Approximately one quarter of human bones are in the feet.' true,
// question3: 'A slug\'s blood is green.' true,
//  */
