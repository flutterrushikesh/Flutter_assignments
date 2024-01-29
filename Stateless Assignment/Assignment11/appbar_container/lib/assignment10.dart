import 'package:flutter/material.dart';

class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rounded corners"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(20),
                topStart: Radius.circular(20),
              ),
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
