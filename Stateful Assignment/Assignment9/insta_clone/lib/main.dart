import 'package:flutter/material.dart';
import 'package:insta_clone/instagram.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
