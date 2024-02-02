import 'package:flutter/material.dart';

class Colorchange extends StatefulWidget {
  const Colorchange({super.key});
  @override
  State<Colorchange> createState() => _ColorchangeState();
}

class _ColorchangeState extends State<Colorchange> {
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;

  Color setColor1() {
    if (option1 == false) {
      return Colors.black;
    } else {
      return Colors.green;
    }
  }

  Color setColor2() {
    if (option2 == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  Color setColor3() {
    if (option3 == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  Color setColor4() {
    if (option4 == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Togling"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Row(
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
                Container(
                  height: 150,
                  width: 150,
                  color: setColor2(),
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: setColor3(),
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: setColor4(),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (option1 == false) {
                        option1 = true;
                      }
                    });
                  },
                  child: const Text("Option1"),
                ),
                //const SizedBox(
                //height: 20,
                //),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (option1 == false) {
                        option1 = true;
                      }
                      if (option2 == false) {
                        option2 = true;
                      }
                    });
                  },
                  child: const Text("Option2"),
                ),
                //const SizedBox(
                //height: 20,
                //),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (option1 == false) {
                        option1 = true;
                      }
                      if (option3 == false) {
                        option3 = true;
                      }
                    });
                  },
                  child: const Text("Option3"),
                ),
                // const SizedBox(
                // height: 20,
                //),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (option1 == false) {
                        option1 = true;
                      }
                      if (option4 == false) {
                        option4 = true;
                      }
                    });
                  },
                  child: const Text("Option4"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
