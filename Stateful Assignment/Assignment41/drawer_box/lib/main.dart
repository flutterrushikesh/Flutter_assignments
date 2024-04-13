import 'package:flutter/material.dart';
import 'package:drawer_box/drawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyDrawerBox(),
      debugShowCheckedModeBanner: false,
    );
  }
}
