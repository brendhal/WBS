import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('My App'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              SizedBox(
                width: 150,
                height: 150,
                child: Image(
                  image: AssetImage('assets/images/image1.jpg'),
                ),
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: Image(
                  image: AssetImage('assets/images/image2.jpeg'),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
