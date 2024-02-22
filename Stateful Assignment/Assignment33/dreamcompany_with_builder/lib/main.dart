import 'package:flutter/material.dart';
import 'company.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DreamCompany(),
      debugShowCheckedModeBanner: false,
    );
  }
}
