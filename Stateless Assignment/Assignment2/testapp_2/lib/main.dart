import 'package:flutter/material.dart';
import 'package:testapp_2/application.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Application(),
    );
  }
}
