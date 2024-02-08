import 'package:flutter/material.dart';

class Core2Web extends StatefulWidget {
  const Core2Web({super.key});
  @override
  State<Core2Web> createState() => _Core2WebState();
}

class _Core2WebState extends State<Core2Web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue.shade100,
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Icons.qr_code_scanner,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 15,
                  height: 50,
                ),
                Text(
                  "My Cources",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    height: 50,
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbovGM09BrzErsXMNQWkTAYj_eWl1aGxRsrQ&usqp=CAU',
                    //height: 200,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnib96eJz-nxAXE_7oLYdPLITKSadYwtpRfw&usqp=CAU',
                    height: 170,
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                  height: 75,
                ),
                Text(
                  "Online Cources",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
