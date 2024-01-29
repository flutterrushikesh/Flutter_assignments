import 'package:flutter/material.dart';

class Application2 extends StatefulWidget {
  const Application2({super.key});
  @override
  State<Application2> createState() => _Application2State();
}

class _Application2State extends State<Application2> {
  //variables declaration
  bool box1color = false;
  bool box2color = false;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Box"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Box1
              Column(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      color: box1color ? Colors.red : Colors.black),
                  const SizedBox(
                    height: 20,
                  ),
                  //Box1 Button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box1color = !box1color;
                      });
                    },
                    child: const Text("Color Box1"),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              //Box2
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box2color ? Colors.blue : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box2color = !box2color;
                      });
                    },
                    child: const Text("Color Box 2"),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),

              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
