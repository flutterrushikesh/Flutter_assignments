import 'package:flutter/material.dart';

class Tiranga extends StatelessWidget {
  const Tiranga({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tiranga",
          style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 251, 171, 50),
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 113, 255, 118),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 700,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  height: 80,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2023/04/06/16/29/ashoka-chakra-7904695_960_720.png',
                  ),
                ),
                Container(
                  height: 80,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'भारतीय',
                  style: TextStyle(fontSize: 50),
                ),
                const Text(
                  'गणतंत्र ',
                  style: TextStyle(fontSize: 50),
                ),
                const Text(
                  'दिन',
                  style: TextStyle(fontSize: 50),
                ),
                const Text(
                  'चिरायु',
                  style: TextStyle(fontSize: 50),
                ),
                const Text(
                  'हो',
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
