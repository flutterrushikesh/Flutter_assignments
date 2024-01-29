import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello core2web"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 360,
            color: Colors.blue,
          ),
        ));
  }
}
