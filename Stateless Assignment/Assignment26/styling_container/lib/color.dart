import 'package:flutter/material.dart';

class Styling extends StatelessWidget {
  const Styling({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Styling_Container",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    );
  }
}
