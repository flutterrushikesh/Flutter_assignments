import 'package:flutter/material.dart';

class DynamicCart extends StatefulWidget {
  const DynamicCart({super.key});
  @override
  State createState() => _DynamicCartState();
}

class _DynamicCartState extends State {
  final TextEditingController _nameTextEditingController =
      TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dynamic Cards",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23,
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
              controller: _nameTextEditingController,
              focusNode: _nameFocusNode,
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
        ],
      ),
    );
  }
}
