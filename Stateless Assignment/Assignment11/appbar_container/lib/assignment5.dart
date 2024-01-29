import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Images"),
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuB9nJOJg9utLXVexffoyk03ikv5XTF3zTlNADiNDOPRFbf-JxIns3ulJNivQ3LjOvxnE&usqp=CAU',
                height: 150,
                width: 150,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwCcFBGJzZzZYZYiimaYjkcVFbg2v3e-VGjhQKTR3NZe9NJaAnuiNo8XwkwXSigWZwnAI&usqp=CAU',
                height: 150,
                width: 150,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1X-AN3kFs-XAzQU5uTMgBv7IXiWaT-L7zeQ&usqp=CAU',
                height: 150,
                width: 150,
              ),
            ],
          ),
        ));
  }
}
