import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDOList extends StatefulWidget {
  const ToDOList({super.key});
  @override
  State createState() => _ToDoListState();
}

class _ToDoListState extends State {
  List tasks = [
    {
      'taskName': 'Lorem Ipsum is simply setting.',
      'discription':
          "Simply dummy text of the printing and typesetting industry.  ",
      'date': '10 July 2023'
    },
    {
      'taskName': 'Lorem Ipsum is simply setting.',
      'discription':
          "Simply dummy text of the printing and typesetting industry.",
      'date': '10 July 2023'
    },
    {
      'taskName': 'Lorem Ipsum is simply setting.',
      'discription':
          "Simply dummy text of the printing and typesetting industry.",
      'date': '10 July 2023'
    },
    {
      'taskName': 'Lorem Ipsum is simply setting.',
      'discription':
          "Simply dummy text of the printing and typesetting industry.",
      'date': '10 July 2023'
    },
    {
      'taskName': 'Lorem Ipsum is simply setting.',
      'discription':
          "Simply dummy text of the printing and typesetting industry.",
      'image': '',
      'date': '10 July 2023'
    }
  ];

  List colors = [
    const Color.fromARGB(255, 228, 196, 193),
    const Color.fromARGB(255, 192, 210, 233),
    const Color.fromARGB(255, 226, 225, 205),
    const Color.fromARGB(255, 226, 205, 226)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "To-Do List",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 26,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 73, 200, 202)),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: tasks.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(18),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: colors[index % colors.length],
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 20,
                        offset: Offset(0, 1),
                      ),
                    ]),
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 13,
                              ),
                              SizedBox(
                                height: 60,
                                width: 60,
                                child: CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 252, 252, 252),
                                    child: Icon(Icons.broken_image_outlined)
                                    // Image.asset("assets/image/image.png"),
                                    ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 240,
                                  child: Text(
                                    tasks[index]['taskName'],
                                    style: GoogleFonts.quicksand(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: Text(
                                    tasks[index]['discription'],
                                    style: GoogleFonts.quicksand(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ]),
                        ]),
                    Row(
                      children: [
                        Text(tasks[index]['date']),
                        const Spacer(),
                        const Icon(
                          Icons.edit,
                          color: Color.fromARGB(255, 29, 142, 144),
                          size: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.delete_outline,
                          color: Color.fromARGB(255, 29, 142, 144),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
