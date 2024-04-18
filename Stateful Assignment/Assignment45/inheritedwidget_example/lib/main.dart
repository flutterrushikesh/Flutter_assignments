import 'package:flutter/material.dart';
import 'package:inheritedwidget_example/inheritedwidget.dart';
// import 'package:inheritedwidget_demo/inheritedwidgetdemo.dart';
import 'login.dart';
// import 'modelclass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  String? id;
  String? name;
  String? username;

  @override
  Widget build(BuildContext context) {
    return EmployeeData(
      id: id,
      name: name,
      username: username,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}
