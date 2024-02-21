import 'package:flutter/material.dart';
import 'company.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DreamCompany(),
      debugShowCheckedModeBanner: false,
    );
  }
}
