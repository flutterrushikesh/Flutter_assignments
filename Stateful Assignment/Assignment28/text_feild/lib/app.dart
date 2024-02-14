import 'package:flutter/material.dart';

class Feild extends StatefulWidget {
  const Feild({super.key});
  @override
  State<Feild> createState() => _FeildState();
}

class _FeildState extends State<Feild> {
  final TextEditingController _namesTextEditingController =
      TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();

  int count = 0;
  List<String> namesList = [];

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
            height: 70,
          ),
          SizedBox(
            height: 50,
            child: TextField(
              controller: _namesTextEditingController,
              focusNode: _nameFocusNode,
              decoration: InputDecoration(
                border: InputBorder.none,
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
                setState(() {
                  count++;
                  namesList
                      .add("$count." "${_namesTextEditingController.text}");
                });
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
          Expanded(
            child: ListView.builder(
              itemCount: namesList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 30,
                  width: 280,
                  margin: const EdgeInsets.all(8),
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: Text(namesList[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
