import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Botton sheet"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          showModalBottomSheet(context: context, builder: BuildContext context){
            return Column(),
          }
        },),
      ),
    );
  }
}
