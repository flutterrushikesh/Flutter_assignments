import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrollable Container"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 13, 13, 12),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 236, 6, 6),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 13, 13, 12),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 243, 19, 168),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 249, 249, 14),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 97, 159, 241),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
