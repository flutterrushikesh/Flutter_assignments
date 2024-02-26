import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TuduList extends StatefulWidget {
  const TuduList({super.key});
  @override
  State createState() => _TuduListState();
}

class TuduModel {
  final String title;
  final String description;
  final String date;

  const TuduModel(
      {required this.title, required this.description, required this.date});
}

class _TuduListState extends State {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  FocusNode titleFocusNode = FocusNode();
  FocusNode descriptionFocusNode = FocusNode();
  FocusNode dateFocusNode = FocusNode();

  List userData = [
    const TuduModel(
        title: "Rushikesh", description: "Dhale", date: "10 / 10 / 10")
  ];

  List colorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];

  void showModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(2, 137, 147, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: titleController,
                    focusNode: titleFocusNode,
                    autofocus: false,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(2, 137, 147, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(34, 14, 163, 0.82),
                        ),
                      ),
                    ),
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => value,
                    onSubmitted: (value) => value,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(2, 137, 147, 1),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: descriptionController,
                    focusNode: descriptionFocusNode,
                    autofocus: false,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(2, 137, 147, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(34, 14, 163, 0.82),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(2, 137, 147, 1),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: dateController,
                    focusNode: dateFocusNode,
                    autofocus: false,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(2, 137, 147, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(34, 14, 163, 0.82),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
              SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    userData.add(TuduModel(
                        title: titleController.text,
                        description: descriptionController.text,
                        date: dateController.text));
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(1, 137, 147, 1),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tudu List",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 137, 147, 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModal();
        },
        child: const Icon(
          Icons.add_rounded,
          size: 35,
          color: Color.fromRGBO(1, 137, 147, 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (BuildContext context, int index) {
            return Column();
          },
        ),
      ),
    );
  }
}
