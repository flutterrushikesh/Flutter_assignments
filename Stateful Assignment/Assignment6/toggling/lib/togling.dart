import 'package:flutter/material.dart';

class Colorchange extends StatefulWidget {
  const Colorchange({super.key});
  @override
  State<Colorchange> createState() => _ColorchangeState();
}

class _ColorchangeState extends State<Colorchange> {
  bool boxcolor1 = false;
  bool boxcolor2 = false;

  Color setColor1() {
    if (boxcolor1 == false) {
      return Colors.black;
    } else {
      return Colors.amber;
    }
  }

  Color setColor2() {
    if (boxcolor2 == false) {
      return Colors.black;
    } else {
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Togling"),
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
                    if (boxcolor1 == false) {
                      boxcolor1 = true;
                    } else {
                      boxcolor1 = false;
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
                    if (boxcolor2 == false) {
                      boxcolor2 = true;
                    } else {
                      boxcolor2 = false;
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
