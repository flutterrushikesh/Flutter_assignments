import 'package:flutter/material.dart';

class DreamCompany extends StatefulWidget {
  const DreamCompany({super.key});
  @override
  State createState() => _DreamCompanyState();
}

class _DreamCompanyState extends State {
  final TextEditingController _namesTextEditingController =
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
      body: ListView.builder(
        itemCount: userData.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
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
                controller: _namesTextEditingController,
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
                controller: _namesTextEditingController,
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
                    setState(() {});
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
            ],
          );
        },
      ),
    );
  }
}
