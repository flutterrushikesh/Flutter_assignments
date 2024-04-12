import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GridView"),
          backgroundColor: Colors.blue,
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          padding: const EdgeInsets.all(10),
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.lime,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Color.fromARGB(255, 21, 222, 244),
            ),
            Container(
              color: Color.fromARGB(255, 30, 127, 11),
            ),
            Container(
              color: Color.fromARGB(255, 238, 163, 12),
            ),
          ],
        ),
      ),
    );
  }
}
