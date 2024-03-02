import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login...",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 35,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
