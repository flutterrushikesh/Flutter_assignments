import 'package:flutter/material.dart';

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
          title: const Text("Gridview builder"),
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          padding: const EdgeInsets.all(15),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.amber,
              child: Text(
                "${index + 1}",
                style: const TextStyle(fontSize: 17),
              ),
            );
          },
        ),
      ),
    );
  }
}
