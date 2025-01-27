import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//main axis alignment
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // verticalDirection: VerticalDirection.up,
            // verticalDirection: VerticalDirection.down,
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Container(
                height: 100.0,
                width: 100.0,
                // width: double.infinity,
                color: Colors.white,
                child: Text("data 1"),
              ),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                // width: double.infinity,
                color: Colors.grey,
                child: Text("data 2"),
              ),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                // width: double.infinity,
                color: Colors.pink,
                child: Text("data 3"),
              ),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                // width: double.infinity,
                color: Colors.orange,
                child: Text("data 4"),
              ),
              // // Container(
              //   width: double.infinity,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
