import 'package:flutter/material.dart';

class BorderRadius1 extends StatelessWidget {
  const BorderRadius1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Colors.blue,
          width: 5,
        ),
      ),
    ));
  }
}
