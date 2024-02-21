import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Management(),
    );
  }
}

class Management extends StatefulWidget {
  const Management({super.key});
  @override
  State createState() {
    print("In Create State");
    return _ManagementState();
  }
}

class _ManagementState extends State {

  @override
  void initState() {
    print("In init State");
    super.initState();
  }

  @override
  void 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "State Management",
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
