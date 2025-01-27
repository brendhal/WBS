import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: Container(),
//       ),
//     ),
//   );
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                // margin: EdgeInsets.all(20.0),
                // margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                // margin: EdgeInsets.fromLTRB(30, 15, 25, 40),
                margin: EdgeInsets.only(left: 30),
                padding: EdgeInsets.all(20),
                color: Colors.white,
              ),
              Text('data')
            ],
          ),
        ),
      ),
    );
  }
}
