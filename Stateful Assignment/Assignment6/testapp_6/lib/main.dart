import 'package:flutter/material.dart';
import 'package:testapp_6/Application.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Application2(),
    );
  }
}
