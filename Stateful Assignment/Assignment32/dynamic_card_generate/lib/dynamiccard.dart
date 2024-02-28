import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DynamicCart extends StatefulWidget {
  const DynamicCart({super.key});
  @override
  State createState() => _DynamicCartState();
}

class _DynamicCartState extends State {
  final TextEditingController _taskTextEditingController =
      TextEditingController();

  final TextEditingController _descriptionTextEditingController =
      TextEditingController();

  final TextEditingController _dateTextEditingController =
      TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();

  final FocusNode _descriptionFocusNode = FocusNode();

  final FocusNode _dateFocusNode = FocusNode();

  List activities = [];
  List colors = const [
    Color.fromARGB(255, 228, 196, 193),
    Color.fromARGB(255, 192, 210, 233),
    Color.fromARGB(255, 226, 225, 205),
    Color.fromARGB(255, 226, 205, 226),
    Color.fromARGB(255, 190, 227, 197)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-du list cards",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            child: TextField(
              controller: _taskTextEditingController,
              focusNode: _nameFocusNode,
              autofocus: true,
              enabled: true,
              decoration: InputDecoration(
                hintText: "Enter task",
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.pink,
                  ),
                ),
              ),
              cursorColor: Colors.black,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) => value,
              onSubmitted: (value) => value,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: TextField(
              controller: _descriptionTextEditingController,
              focusNode: _descriptionFocusNode,
              autofocus: true,
              enabled: true,
              decoration: InputDecoration(
                hintText: "Enter description",
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.pink,
                  ),
                ),
              ),
              cursorColor: Colors.black,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              onChanged: (value) => value,
              onSubmitted: (value) => value,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: TextField(
              controller: _dateTextEditingController,
              focusNode: _dateFocusNode,
              autofocus: true,
              enabled: true,
              decoration: InputDecoration(
                hintText: "Enter deadline",
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.pink,
                  ),
                ),
              ),
              cursorColor: Colors.black,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.datetime,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.blue.shade100)),
              onPressed: () {
                setState(() {
                  activities.add({
                    "task": _taskTextEditingController.text,
                    "description": _descriptionTextEditingController.text,
                    "deadline": _dateTextEditingController.text
                  });
                });
              },
              child: Text(
                "Add task",
                style: GoogleFonts.quicksand(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: activities.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: colors[index % colors.length],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 10,
                        blurRadius: 17,
                        offset: Offset(-8, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "task : ${activities[index]["task"]}",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        "Description : ${activities[index]["description"]}",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        "Deadline : ${activities[index]["deadline"]}",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
