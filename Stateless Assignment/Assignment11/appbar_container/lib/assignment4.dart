import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ],
          ),
        ));
  }
}
