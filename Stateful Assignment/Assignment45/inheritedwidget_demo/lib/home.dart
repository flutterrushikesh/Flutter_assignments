import 'package:flutter/material.dart';
import 'package:inheritedwidget_demo/inheritedwidgetdemo.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Info"),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade200),
            ),
            child: Text(),,
          ),
        ],
      ),
    );
  }
}
