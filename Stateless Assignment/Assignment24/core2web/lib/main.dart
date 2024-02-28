import 'package:flutter/material.dart';
import 'core2web.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Core2Web(),
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      title: "Core2Web",
    );
  }
}
