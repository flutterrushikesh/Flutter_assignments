import 'package:flutter/material.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});
  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " My Portfolio",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            Icons.favorite_border_rounded,
            size: 30,
          ),
        ],
        backgroundColor: Colors.blue.shade300,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.blue.shade200,
        child: const Text(
          "Next",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.,
        children: [
          Column(
            children: [
              (counter >= 1)
                  ? const Text(
                      "Name: Rushikesh Dhale",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Container(),
              // const SizedBox(
              // height: 20,
              //),
              (counter >= 2)
                  ? Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjuQd7B1cmqjISPbbIVnV5NgM4rBVEmiHjIQ&usqp=CAU",
                    )
                  : Container(),
              const SizedBox(
                height: 20,
              ),
              (counter >= 3)
                  ? const Text(
                      "College Name: Zeal Polytechnic",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Container(),

              (counter >= 4)
                  ? Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7ZTxGz0VFRJ2XT9w5vzy_N8LcxjD91iXb52n8hMnBr4h5se64i1PB-ihJiZLGs9eHae4&usqp=CAU",
                    )
                  : Container(),
              const SizedBox(
                height: 20,
              ),
              (counter >= 5)
                  ? const Text(
                      "Dream Company:  Amazon",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Container(),

              (counter >= 6)
                  ? Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNRNpR6wsD8fPQQ19EWJa93PmoGHIDscU0eQ&usqp=CAU",
                    )
                  : Container(),
            ],
          )
        ],
      ),
    );
  }
}
