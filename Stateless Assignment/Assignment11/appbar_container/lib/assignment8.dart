import 'package:flutter/material.dart';

class Assignment8 extends StatelessWidget {
  const Assignment8({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          // color: Colors.blue,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
          ),
        ),
      ),
    );
  }
}
