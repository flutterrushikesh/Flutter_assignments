import 'package:flutter/material.dart';

class MyDrawerBox extends StatefulWidget {
  const MyDrawerBox({super.key});
  @override
  State createState() => _MyDrawerBoxState();
}

class _MyDrawerBoxState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer box demo"),
      ),
      drawer: const Drawer(
        child: Center(
          child: Text(
            "Drawer box \nadd containt",
          ),
        ),
      ),
    );
  }
}
