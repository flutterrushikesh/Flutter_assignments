import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("UPI payments"),
        actions: const [
          Icon(
            Icons.qr_code_scanner_rounded,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications_active_rounded,
            size: 25,
          ),
        ],
      ),
    );
  }
}
