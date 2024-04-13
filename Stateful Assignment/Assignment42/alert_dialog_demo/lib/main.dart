import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAlertDialog(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({super.key});
  @override
  State createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert box"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Table of 2",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              "$counter",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  counter = 0;
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 15),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          alertBox();
        },
        child: const Icon(Icons.add, size: 35),
      ),
    );
  }

  void alertBox() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Are you sure to add  "),
            content: const Text("add value by 2"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter += 2;
                  });
                  Navigator.of(context).pop();
                },
                child: const Text("Add"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Not now"),
              )
            ],
          );
        });
  }
}
