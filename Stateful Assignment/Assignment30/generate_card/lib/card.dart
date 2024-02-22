import "package:flutter/material.dart";

class GenerateCard extends StatefulWidget {
  const GenerateCard({super.key});
  @override
  State createState() => _GenerateCardState();
}

class _GenerateCardState extends State {
  final TextEditingController _nameTextEditingController =
      TextEditingController();
  final TextEditingController _cNameTextEditingController =
      TextEditingController();

  final TextEditingController _cLocTextEditingController =
      TextEditingController();

  final FocusNode _cLocFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _cnameFocusNode = FocusNode();

  List userData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Generate card",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          SizedBox(
            child: TextField(
              controller: _nameTextEditingController,
              focusNode: _nameFocusNode,
              decoration: InputDecoration(
                hintText: "Enter your Name",
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
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                ("On change : $value");
              },
              onSubmitted: (value) {
                ("On Supbmitted : $value");
              },
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: TextField(
              controller: _cNameTextEditingController,
              focusNode: _cnameFocusNode,
              decoration: InputDecoration(
                hintText: "Enter company name",
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
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) => value,
              onSubmitted: (value) => value,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            child: TextField(
              controller: _cLocTextEditingController,
              focusNode: _cLocFocusNode,
              decoration: InputDecoration(
                hintText: "Enter Company Location",
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.pink),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              cursorColor: Colors.black,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    userData.add(
                      {
                        "name": _nameTextEditingController.text,
                        "compName": _cNameTextEditingController.text,
                        "CompLoc": _cLocTextEditingController.text,
                      },
                    );
                  },
                );
              },
              child: const Text("Submit..."),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            color: const Color.fromARGB(233, 223, 236, 170),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name : ${_nameTextEditingController.text}"),
                  const SizedBox(height: 5),
                  Text("Comapany Name: ${_cNameTextEditingController.text}"),
                  const SizedBox(height: 5),
                  Text("Company Location: ${_cLocTextEditingController.text}"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
