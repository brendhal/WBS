// ignore: file_names
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Center(
//         child: Text('Hello World'),
//       ),
//     ),
//   );
// }

//Image to network
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey,
//         appBar: AppBar(
//           title: Text('My App'),
//           backgroundColor: Colors.blueGrey[900],
//         ),
//         body: const Center(
//           child: Image(
//             image: NetworkImage(
//               'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// //Image to assets
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey,
//         appBar: AppBar(
//           title: Text('My App'),
//           backgroundColor: Colors.blueGrey[900],
//         ),
//         body: const Center(
//           child: Image(
//             image: AssetImage('assets/images/image1.jpg'),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// Image to assets to change icon
// C:\projects\flutter\helloworld\android\app\src\main\res

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
