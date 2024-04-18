import 'package:flutter/material.dart';
// import 'package:inheritedwidget_example/inheritedwidget.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});
  @override
  State createState() => _MySkillsState();
}

class _MySkillsState extends State {
  TextEditingController skillController = TextEditingController();

  List skillList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add your skills"),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: TextFormField(
                controller: skillController,
                decoration: const InputDecoration(
                  hintText: "Skill",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please your skill";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {});
                skillList.add(
                  {'skill': skillController.text},
                );
              },
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                  Size(double.infinity, 50),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(14, 161, 125, 1),
                ),
              ),
              child: const Text(
                "Add in your skill",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            // const SkillCard(),
            Expanded(
              child: ListView.builder(
                itemCount: skillList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [Text(skillList[index]['skill'])],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  const SkillCard({super.key});

  get skillList => null;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: skillList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(),
            child: Column(
              children: [Text(skillList[index]['skill'])],
            ),
          );
        },
      ),
    );
  }
}
