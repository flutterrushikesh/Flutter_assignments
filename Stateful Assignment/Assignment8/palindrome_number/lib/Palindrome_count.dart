import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget {
  const Palindrome({super.key});
  @override
  State<Palindrome> createState() => _PalindromeState();
}

class _PalindromeState extends State<Palindrome> {
  int count = 0;

  void countPalindrome() {
    count = 0;
    List<int> numberList = [1, 775, 575, 124, 98789, 565, 781, 999];
    for (int i = 0; i < numberList.length; i++) {
      int temp = numberList[i].abs();
      int reverseNum = 0;
      while (temp != 0) {
        reverseNum = reverseNum * 10 + temp % 10;
        temp = temp ~/ 10;
      }
      if (reverseNum == numberList[i].abs()) {
        reverseNum;
        count++;
        print(count);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Number System"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                countPalindrome();
                setState(() {});
              },
              child: const Text("Check Palindrome Count"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("$count Numbers are Palindrome in the list"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
