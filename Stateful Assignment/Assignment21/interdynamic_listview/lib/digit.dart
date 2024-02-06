import 'package:flutter/material.dart';

class DisplayDigit extends StatefulWidget {
  const DisplayDigit({super.key});
  @override
  State<DisplayDigit> createState() => _DisplayDigitState();
}

class _DisplayDigitState extends State<DisplayDigit> {
  int count = 0;
  List<int> digit = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Display Digits"),
        ),
        body: ListView.builder(
          itemCount: digit.length,
          itemBuilder: (contex, index) {
            return Container(
              height: 30,
              margin: const EdgeInsets.all(10),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                "${digit[index]}",
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
              digit.add(count);
            });
          },
          child: const Icon(Icons.add),
        ));
  }
}
