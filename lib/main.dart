import 'package:flutter/material.dart';
import 'package:todolist/screens/home.dart';
import 'package:todolist/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO LIST',
      home: Splash(),
    );
  }
}
