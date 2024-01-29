import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Core2Web",
        ),
        actions: const [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.qr_code_scanner_rounded,
          ),
        ],
      ),
    );
  }
}
