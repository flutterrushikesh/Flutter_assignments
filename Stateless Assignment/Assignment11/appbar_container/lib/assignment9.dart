import 'package:flutter/material.dart';

class Assignment9 extends StatelessWidget {
  const Assignment9({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rounded border"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
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
