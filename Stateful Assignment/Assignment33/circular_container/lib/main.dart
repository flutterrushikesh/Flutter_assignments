import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(190, 188, 182, 1),
              shape: BoxShape.circle,
              
              border: Border.all(
                width: 2,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(20, -20),
                  blurRadius: 20,
                )
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
