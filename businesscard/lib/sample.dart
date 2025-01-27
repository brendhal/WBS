import 'package:flutter/material.dart';

void main() {
  runApp(sampleApp());
}

class sampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo and title
            Column(
              children: [
                Image.asset(
                  'assets/logo.png', // Replace with your logo asset
                  height: 100,
                ),
                SizedBox(height: 20),
                Text(
                  "What's Cooking?",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "FILIPINO CUISINE",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 2,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            // Description text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                '"What’s Cooking" helps you make the best choice for every meal, turning every mealtime into a celebration of Filipino flavors.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(height: 40),
            // Button
            ElevatedButton(
              onPressed: () {
                // Button action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Background color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'ANONG ULAM?',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
