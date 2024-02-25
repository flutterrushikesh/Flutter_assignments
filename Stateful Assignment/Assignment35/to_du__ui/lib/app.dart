import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TuduApp extends StatefulWidget {
  const TuduApp({super.key});
  @override
  State createState() => _TuduAppState();
}

class _TuduAppState extends State {
  // List listOfCards = [];
  List colorOfCards = const [
    Color.fromRGBO(250, 232, 232, 1),
    //   Color.fromRGBO(232, 237, 250, 1),
    //   Color.fromRGBO(250, 249, 232, 1),
    //   Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tu-do list",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 130,
              width: 330,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorOfCards[index % colorOfCards.length],
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(141, 141, 141, 1),
                    blurRadius: 40,
                    spreadRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
