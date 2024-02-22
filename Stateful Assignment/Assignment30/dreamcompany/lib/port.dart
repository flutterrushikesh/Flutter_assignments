import 'package:flutter/material.dart';

class Feild extends StatefulWidget {
  const Feild({super.key});
  @override
  State<Feild> createState() => _FeildState();
}

class _FeildState extends State<Feild> {
  final TextEditingController _namesTextEditingController =
      TextEditingController();

  final TextEditingController _namesTextEditingController1 =
      TextEditingController();
  final TextEditingController _namesTextEditingController2 =
      TextEditingController();
  // final FocusNode _nameFocusNode = FocusNode();

  int count = 0;
  List namesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TextFeild",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            child: TextField(
              controller: _namesTextEditingController,
              // focusNode: _nameFocusNode,
              decoration: InputDecoration(
                hintText: "Enter your name ....",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 17,
                ),
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
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              onChanged: (names) {
                "Value =$names";
              },
              onSubmitted: (value) {
                "DATA SUBMITTED =$value";
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            child: TextField(
              controller: _namesTextEditingController1,
              // focusNode: _nameFocusNode,
              decoration: InputDecoration(
                hintText: "Company name...",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 17,
                ),
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
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              onChanged: (names) {
                "Value =$names";
              },
              onSubmitted: (value) {
                "DATA SUBMITTED =$value";
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            child: TextField(
              controller: _namesTextEditingController2,
              // focusNode: _nameFocusNode,
              decoration: InputDecoration(
                hintText: "Company name...",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 17,
                ),
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
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              onChanged: (names) {
                "Value =$names";
              },
              onSubmitted: (value) {
                "DATA SUBMITTED =$value";
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.blue.shade200,
                ),
              ),
              onPressed: () {
                setState(
                  () {
                    namesList.add({
                      "name": _namesTextEditingController.text,
                      "cName": _namesTextEditingController1.text,
                      "cLoc": _namesTextEditingController2.text
                    });
                  },
                );
              },
              child: const Text(
                "Submit...",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(18),
            padding: const EdgeInsets.all(20),

            width: double.infinity,
            // color: Colors.amber,
            decoration: const BoxDecoration(
              color: Color.fromARGB(155, 147, 205, 240),
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 8,
                  blurRadius: 20,
                  offset: Offset(10, 10),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _namesTextEditingController1.text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                Text(
                  _namesTextEditingController2.text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                Text(
                  _namesTextEditingController.text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
