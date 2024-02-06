import 'package:flutter/material.dart';
import 'digit.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override 
  Widget build(BuildContext contex ) {
    return MaterialApp(
      home:DisplayDigit(),
    );
  }
}