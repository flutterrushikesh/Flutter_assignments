import 'package:flutter/material.dart';

class TfeildApp extends StatefulWidget {
  const TfeildApp({super.key});
  @override
  State<TfeildApp> createState() {
    return _TfeildAppState();
  }
}

class _TfeildAppState extends State<TfeildApp> {
  final TextEditingController _namesTextEditingController =
      TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TextFeild",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          TextField(
            controller: _namesTextEditingController,
            focusNode: _nameFocusNode,
            decoration: InputDecoration(
              hintText: "Enter Name",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
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
            cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              ("Value = $value");
            },
            onSubmitted: (value) {
              ("DATA SUBMITTED = $value");
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("ADD"),
      ),
    );
  }
}
