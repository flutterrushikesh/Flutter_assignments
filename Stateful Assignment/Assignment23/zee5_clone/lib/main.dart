import 'package:flutter/material.dart';
import 'zee5.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Zee5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
