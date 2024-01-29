import 'package:flutter/material.dart';

class Flag extends StatefulWidget {
  const Flag({super.key});

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  int _counter = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Indian Flag",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        backgroundColor: Colors.blue.shade200,
        child: const Text(
          "Add",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
       // crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          (_counter >= 0)
              ? Container(
                  height: 700,
                  width: 10,
                  color: Colors.black,
                )
              : Container(),
          const SizedBox(
            height: 80,
          ),
          Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              (_counter >= 1)
                  ? Container(
                      height: 80,
                      width: 250,
                      color: Colors.orange,
                    )
                  : Container(),
              (_counter >= 2)
                  ? Container(
                      height: 80,
                      width: 250,
                      color: Colors.white,
                      child: (_counter >= 3)
                          ? Image.network(
                              "https://t3.ftcdn.net/jpg/03/11/13/46/240_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg")
                          : Container(),
                    )
                  : Container(),
              (_counter >= 4)
                  ? Container(
                      height: 80,
                      width: 250,
                      color: Colors.green,
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
