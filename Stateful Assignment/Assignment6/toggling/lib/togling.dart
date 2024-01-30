import 'package:flutter/material.dart';

class Togle extends StatefulWidget {
  const Togle({super.key});

  @override
  State<Togle> createState() => _TogleState();
}

class _TogleState extends State<Togle> {
  bool _boxColor1 = false;
  bool _boxColor2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Toggling",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 150,
                  width: 150,
                  color: _boxColor1 ? Colors.red : Colors.black),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _boxColor1 = !_boxColor1;
                  });
                },
                child: const Text("Change Color"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: _boxColor2 ? Colors.blue : Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _boxColor2 = !_boxColor2;
                  });
                },
                child: const Text("Change color"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
