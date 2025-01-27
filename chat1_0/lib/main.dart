import 'package:flutter/material.dart';
import 'package:chat1_0/screens/welcome_screen.dart';
import 'package:chat1_0/screens/registration_screen.dart';
import 'package:chat1_0/screens/login_screen.dart';
import 'package:chat1_0/screens/chat_screen.dart';

void main() => runApp(const Chats1_0());

class Chats1_0 extends StatelessWidget {
  const Chats1_0({Key? key}) : super(key: key);

  // Define route names as constants
  static const String welcomeScreen = '/welcome';
  static const String registrationScreen = '/registration';
  static const String loginScreen = '/login';
  static const String chatScreen = '/chat';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: welcomeScreen, // Set the initial route(),
      routes: {
        welcomeScreen: (context) => WelcomeScreen(),
        registrationScreen: (context) => RegistrationScreen(),
        loginScreen: (context) => LoginScreen(),
        chatScreen: (context) => ChatScreen(),
      },
    );
  }
}
