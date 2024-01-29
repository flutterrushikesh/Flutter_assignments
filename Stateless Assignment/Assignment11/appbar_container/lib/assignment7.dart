import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Scrollable Images"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZbXxo5smd56BGOvIKRCj83mnR_jF1SWWw6Q&usqp=CAU',
                  height: 300,
                  width: 150,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwwV93lrw54tbu-fX5fNamj8u2F1G9H_PWeLIwXnrjlzbwNLKp0YaX9gEGaob9z2nPbvA&usqp=CAU',
                  height: 300,
                  width: 150,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQryuWRadYjq0VvJumKMbQjHOsU9yeTum4TaD_tT2gIt0sgDbjHAzLP5rJt3BsKLTCsZyY&usqp=CAU',
                  height: 300,
                  width: 150,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ57j4EQLDCeSyCfPtBot8TqGx9r0A-ixI4LJHHBO12lDlnVpEXG1c6IHd6gu0d-3odHdo&usqp=CAU',
                  height: 300,
                  width: 150,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1X-AN3kFs-XAzQU5uTMgBv7IXiWaT-L7zeQ&usqp=CAU',
                  height: 300,
                  width: 150,
                ),
              ],
            ),
          ),
        ));
  }
}
