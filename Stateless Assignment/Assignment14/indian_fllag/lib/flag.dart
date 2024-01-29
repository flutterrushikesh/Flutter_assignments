import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  const Flag({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tiranga",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
              child: Image.network(
                'https://t3.ftcdn.net/jpg/03/11/13/46/360_F_311134651_RXMvbUB3h089Js0ODvuHrttmsON9Tpik.jpg',
                width: 90,
                height: 90,
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
