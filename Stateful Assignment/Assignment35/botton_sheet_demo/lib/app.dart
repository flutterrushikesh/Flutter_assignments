import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:google_fonts/google_fonts.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});
  @override
  State createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State {
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _descriptionEditingController =
      TextEditingController();

  final TextEditingController _dateEditingController = TextEditingController();

  final FocusNode _titleFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();
  final FocusNode _dateFocusNode = FocusNode();

  List userData = [];

  List listOfColor = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];

  void submitted(bool check) {
    if (_titleEditingController.text.trim().isNotEmpty &&
        _descriptionEditingController.text.trim().isNotEmpty &&
        _dateEditingController.text.trim().isNotEmpty) {
      if (!check) {
        setState(() {
          userData.add({
            "title": _titleEditingController.text,
            "description": _descriptionEditingController.text,
            "date": _dateEditingController.text,
          });
        });
      }
    }
    clearControllers();
  }

  void clearControllers() {
    _titleEditingController.clear();
    _descriptionEditingController.clear();
    _dateEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            isDismissible: true,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Create Task",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 15),
                          Text(
                            "Title",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: const Color.fromRGBO(0, 139, 149, 1),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 5,
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: TextField(
                          controller: _titleEditingController,
                          focusNode: _titleFocusNode,
                          autofocus: false,
                          enabled: true,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(0, 139, 149, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(0, 137, 149, 1),
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
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 15),
                          Text(
                            "Description",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: const Color.fromRGBO(0, 139, 149, 1),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 5,
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: TextField(
                          controller: _descriptionEditingController,
                          focusNode: _descriptionFocusNode,
                          autofocus: false,
                          enabled: true,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(0, 139, 149, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(0, 137, 149, 1),
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
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Date",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: const Color.fromRGBO(0, 139, 149, 1),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 5,
                          bottom: 15,
                          left: 15,
                          right: 15,
                        ),
                        child: TextField(
                          controller: _dateEditingController,
                          focusNode: _dateFocusNode,
                          autofocus: false,
                          enabled: true,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_month,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(1, 139, 147, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(0, 139, 147, 1),
                              ),
                            ),
                          ),
                          onTap: () async {
                            DateTime? pikkedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2024),
                              lastDate: DateTime(2025),
                            );
                            String formatedDate =
                                DateFormat.yMMMd().format(pikkedDate!);
                            setState(() {
                              _dateEditingController.text = formatedDate;
                            });
                          },
                          readOnly: true,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) => value,
                          onSubmitted: (value) => value,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            submitted(false);
                            Navigator.of(context).pop();
                          },
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    10,
                                  ),
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(0, 137, 147, 1),
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
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: userData.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.only(bottom: 10, top: 10),
                    decoration: BoxDecoration(
                      color: listOfColor[index % listOfColor.length],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          15,
                        ),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 18,
                          spreadRadius: 5,
                          offset: Offset(-2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.image_outlined),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    userData[index]["title"],
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    userData[index]["description"],
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
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
                              userData[index]["date"],
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.edit,
                                size: 27,
                              ),
                            ),
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(Icons.delete_outline, size: 27),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
