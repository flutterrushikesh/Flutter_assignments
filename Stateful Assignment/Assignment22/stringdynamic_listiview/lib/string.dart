import 'package:flutter/material.dart';

class Strings extends StatefulWidget {
  const Strings({super.key});
  @override
  State<Strings> createState() => _StringsState();
}

class _StringsState extends State<Strings> {
  int count = 0;
  List<String> names = [
    //"Shahsi",
    //"Akshay",
    //"Sachin",
    //"Govind",
    //"Vishal",
    //"Rahul"
  ];
  List<String> name = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("String Dynamic"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Container(
            height: 30,
            margin: EdgeInsets.all(10),
            color: Colors.blue.shade100,
            alignment: Alignment.center,
            child: Text("${name[index]}"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            name.add(names);
          });
        },
        child: const Icon(Icons.add_outlined),
      ),
    );
  }
}
