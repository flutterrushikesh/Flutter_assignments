import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TuduApp extends StatefulWidget {
  const TuduApp({super.key});
  @override
  State createState() => _TuduAppState();
}

class _TuduAppState extends State {
  List listOfContent = [
    {
      "title": "Lorem Ipsum is simply setting industry.",
      "description":
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "date": "10 July 2023",
    },
    {
      "title": "Lorem Ipsum is simply setting industry.",
      "description":
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "date": "10 July 2023",
    },
    {
      "title": "Lorem Ipsum is simply setting industry.",
      "description":
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "date": "10 July 2023",
    },
    {
      "title": "Lorem Ipsum is simply setting industry.",
      "description":
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "date": "10 July 2023",
    },
    {
      "title": "Lorem Ipsum is simply setting industry.",
      "description":
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "date": "10 July 2023",
    },
    {
      "title": "Lorem Ipsum is simply setting industry.",
      "description":
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "date": "10 July 2023",
    }
  ];

  // List listOfCards = [];
  List colorOfCards = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: listOfContent.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              Container(
                height: 170,
                width: 330,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorOfCards[index % colorOfCards.length],
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(141, 141, 141, 1),
                      blurRadius: 20,
                      spreadRadius: 5,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.image_outlined),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                listOfContent[index]["title"],
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                listOfContent[index]["description"],
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 15),
                        Text(
                          listOfContent[index]["date"],
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.edit, size: 25),
                        const SizedBox(width: 13),
                        const Icon(
                          Icons.delete_outline_outlined,
                          size: 25,
                        ),
                        const SizedBox(width: 10)
                        // const Spacer(),
                      ],
                    )
                  ],
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
