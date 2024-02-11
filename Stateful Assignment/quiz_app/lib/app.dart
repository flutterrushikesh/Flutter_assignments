import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": [
        "Steve Jobs",
        "Jeff Bezos",
        "Bill Gates",
        "Elon Musk",
      ],
      "answerIndex": 2,
    },
    {
      "question": "Who is the founder of Apple?",
      "option": [
        "Steave Jobs",
        "jeff Bezos",
        "Bill Gates",
        "Elon Musk",
      ],
      "answerIndex": 0,
    },
    {
      "quetion": "Who is the founder of Amazon?",
      "option": [
        "Steave Jobs",
        "Jeff Bezos",
        "Bill Gates",
        "Elon Musk",
      ],
      "answerIndex": 1,
    },
    {
      "quetion": "Who is the founder of Tesla?",
      "option": [
        "Steave Jobs",
        "Jeff Bezos",
        "Bill Gates",
        "Elon Musk",
      ],
      "answerIndex": 3,
    },
    {
      "option": [
        "Steave Jobs",
        "Lary Page",
        "Bill Gates",
        "Elon Musk",
      ],
      "answerIndex": 1,
    },
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int optionColor1 = -1;
  int currentAnswerIndex = 0;
  int selectedAnswerIndex = 0;

  MaterialStatePropertyAll<Color?> buttonColor(int button) {
    if (optionColor1 != -1) {
      if (button == allQuestions[questionIndex]["answerIndex"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (button == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Question : ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 320,
              child: Text(
                allQuestions[questionIndex]["question"],
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 0;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(0),
                ),
                child: Text("A. ${allQuestions[questionIndex]["options"][0]}"),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(1),
                ),
                child: Text("B. ${allQuestions[questionIndex]["options"][1]}"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(2),
                ),
                child: Text("C. ${allQuestions[questionIndex]["options"][2]}"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(3),
                ),
                child: Text(
                  "D. ${allQuestions[questionIndex]["options"][3]}",
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
          },
          child: const Icon(
            Icons.arrow_forward_outlined,
            size: 25,
          ),
        ),
      );
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
