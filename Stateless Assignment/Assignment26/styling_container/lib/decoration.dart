import 'package:flutter/material.dart';

class DecorationContainer extends StatelessWidget {
  const DecorationContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.yellow,
            width: 5,
          ),
        ),
      ),
    );
  }
}
