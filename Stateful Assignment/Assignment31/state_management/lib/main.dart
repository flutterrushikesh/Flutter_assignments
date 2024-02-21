import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Management(),
    );
  }
}

class Management extends StatefulWidget {
  const Management({super.key});
  @override
  State createState() {
    print("In Create State");
    return _ManagementState();
  }
}

class _ManagementState extends State {
  int count = 0;
  @override
  void initState() {
    print("In init State");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("In didChangeDependancies");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("In build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "State Management",
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Add here",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$count",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            print("In SetState");
            count++;
          });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }

  @override
  void reassemble() {
    print("In reassemble");
    super.reassemble();
  }

  @override
  void dispose() {
    print("In despose");
    super.dispose();
  }
}
