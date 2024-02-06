import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});
  @override
  State<Portfolio> createState() {
    return _PortfolioState();
  }
}

class _PortfolioState extends State<Portfolio> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          backgroundColor: Colors.blue.shade200,
          child: const Text("Next",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (counter >= 1)
              ? const Row(
                  children: [
                    Text(
                      "Name: Rushikesh Dhale",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              : Container(),
          const SizedBox(height: 10),
          (counter >= 2)
              ? Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqPq4-8zLfy1e3_Y4GECe-U3MIkvx1AsGNgQ&usqp=CAU',
                      height: 150,
                    )
                  ],
                )
              : Container(),
          const SizedBox(
            height: 30,
          ),
          (counter >= 3)
              ? const Row(
                  children: [
                    Text(
                      "College: Zeal Polytechnic, Pune",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                )
              : Container(),
          const SizedBox(
            height: 10,
          ),
          (counter >= 4)
              ? Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe0E1fux6b1BLo6wOPjUMWbDG3JQSzD7pWWQ&usqp=CAU',
                    )
                  ],
                )
              : Container(),
          const SizedBox(
            height: 30,
          ),
          (counter >= 5)
              ? const Row(
                  children: [
                    Text(
                      "Dream Company: Amazon",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                )
              : Container(),
          const SizedBox(
            height: 15,
          ),
          (counter >= 6)
              ? Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNRNpR6wsD8fPQQ19EWJa93PmoGHIDscU0eQ&usqp=CAU',
                      width: 300,
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
