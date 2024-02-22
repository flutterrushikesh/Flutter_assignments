import 'package:flutter/material.dart';

class DreamCompany extends StatefulWidget {
  const DreamCompany({super.key});
  @override
  State createState() => _DreamCompanyState();
}

class _DreamCompanyState extends State {
  final TextEditingController _namesTextEditingController =
      TextEditingController();

  final TextEditingController _namesTextEditingController2 =
      TextEditingController();

  final TextEditingController _namesTextEditingController3 =
      TextEditingController();

  List userData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DreamCompany",
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
          const SizedBox(height: 10),
          TextField(
            controller: _namesTextEditingController,
            decoration: const InputDecoration(
              hintText: "Enter your name...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
            onChanged: (value) {
              ("OnChanged: $value");
            },
            onSubmitted: (value) {
              ("OnSubmitted: $value");
            },
          ),
          const SizedBox(height: 15),
          TextField(
            controller: _namesTextEditingController2,
            decoration: const InputDecoration(
              hintText: "Enter your dream Company",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
            onChanged: (value) {
              ("OnChanged: $value");
            },
            onSubmitted: (value) {
              ("OnSubmitted: $value");
            },
          ),
          const SizedBox(height: 15),
          TextField(
            controller: _namesTextEditingController3,
            decoration: const InputDecoration(
              hintText: "Company Location",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            onChanged: (value) {
              ("OnChanged: $value");
            },
            onSubmitted: (value) {
              ("OnSubmitted: $value");
            },
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 380,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  userData.add({
                    "name": _namesTextEditingController.text,
                    "cName": _namesTextEditingController2.text,
                    "cLoc": _namesTextEditingController3.text
                  });
                  // userData.add(_namesTextEditingController2.text);
                  // userData.add(_namesTextEditingController3.text);
                });
              },
              child: const Text(
                "Submit...",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: userData.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(18),
                  padding: const EdgeInsets.all(20),

                  width: double.infinity,
                  // color: Colors.amber,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(155, 173, 235, 206),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 8,
                          blurRadius: 20,
                          offset: Offset(10, 10),
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name : ${userData[index]["name"]}"),
                      Text("Company Name : ${userData[index]["cName"]}"),
                      Text("Company Location : ${userData[index]["cLoc"]}"),
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
