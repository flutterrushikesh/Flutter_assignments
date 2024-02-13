import 'package:flutter/material.dart';

class MarginContainer extends StatelessWidget {
  const MarginContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
      ),
      height: 100,
      width: 100,
      color: Colors.red,
    ));
  }
}
