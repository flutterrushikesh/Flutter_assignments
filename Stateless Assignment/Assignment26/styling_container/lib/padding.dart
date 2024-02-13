import 'package:flutter/material.dart';

class PaddingContainer extends StatelessWidget {
  const PaddingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
          bottom: 10,
          
        ),
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    );
  }
}
