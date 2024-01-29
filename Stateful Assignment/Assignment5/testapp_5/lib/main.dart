import 'package:flutter/material.dart';
import 'package:testapp_5/Application1.dart';
//import 'package:testapp_5/Application2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Application1(),
    );
  }
}
