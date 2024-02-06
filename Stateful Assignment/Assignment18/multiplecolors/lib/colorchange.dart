import 'package:flutter/material.dart';

class Colorchange extends StatefulWidget {
  const Colorchange({super.key});
  @override
  State<Colorchange> createState() => _ColorchangeState();
}

class _ColorchangeState extends State<Colorchange> {
  bool boxcolor1 = false;
  bool boxcolor2 = false;

  int counter1 = 0;
  int counter2 = 0;

  Color setColor1() {
    if (counter1 == 1) {
      return Colors.green;
    } else if (counter1 == 2) {
      return Colors.red;
    } else if (counter1 == 3) {
      return Colors.blue;
    } else {
      return Colors.black;
    }
  }

  Color setColor2() {
    if (counter2 == 1) {
      return Colors.amber;
    } else if (counter2 == 2) {
      return Colors.deepPurple;
    } else if (counter2 == 3) {
      return Colors.limeAccent;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Color in container"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: setColor1(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter1++;
                    if (counter1 == 4) {
                      counter1 = 0;
                    }
                  });
                },
                child: const Text(
                  "Change Color",
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: setColor2(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter2++;
                    if (counter2 == 4) {
                      counter2 = 0;
                    }
                  });
                },
                child: const Text("Change Color"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
