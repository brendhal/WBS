import 'package:flutter/material.dart';

void main() {
  runApp(AnimalApp());
}

class AnimalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: AnimalPage(),
    );
  }
}

class AnimalPage extends StatefulWidget {
  @override
  _AnimalPageState createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  // List of animal names and image paths
  final List<String> animalNames = ['Cat', 'Dog', 'Bird'];
  final List<String> animalImages = [
    'assets/cat.jpg',
    'assets/dog.jpg',
    'assets/bird.jpg',
  ];

  int currentIndex = 0;

  void _showNextAnimal() {
    setState(() {
      currentIndex = (currentIndex + 1) % animalNames.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAB 3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WHAT'S THE ANIMAL",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                animalImages[currentIndex],
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'ANIMAL NAME:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                animalNames[currentIndex].toUpperCase(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _showNextAnimal,
                child: Text('NEXT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
