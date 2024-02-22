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
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 239, 255, 214),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 8,
                    blurRadius: 20,
                    offset: Offset(-5, 5),
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Name : ${_nameTextEditingController.text}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Comapany Name: ${_cNameTextEditingController.text}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Company Location : ${_cLocTextEditingController.text}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
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
