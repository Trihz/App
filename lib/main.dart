import 'package:agrogis/Login/logic_ui.dart';
import 'package:agrogis/SignUp/signup_ui.dart';
import 'package:agrogis/homepage/homepage_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginUI(),
      routes: {
        '/signup': (context) => const SignUpUI(),
        '/login': (context) => const LoginUI(),
        '/homepage': (context) => const HomepageUI(),
      },
    );
  }
}
