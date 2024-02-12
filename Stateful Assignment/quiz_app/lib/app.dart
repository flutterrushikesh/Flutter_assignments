import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class Question {
  final String? modelquestion;
  final List<String>? options;
  final int? answerIndex;

  const Question(this.modelquestion, this.options, this.answerIndex);
}

class _QuizAppState extends State<QuizApp> {
  List allQuestions = [
    {
      "question": "Which datatype hold the both value of int and double?",
      "option": ["numeric", "int", "double", "num"],
      "answerIndex": 3,
    },
    {
      "question": "....... data type can be used to represent true or false",
      "option": ["numeric", "int", "bool", "boolean"],
      "answerIndex": 2,
    },
    {
      "question": "Which of the following is not arithematic operator?",
      "option": ["#", "/", "+", "-"],
      "answerIndex": 0,
    },
    {
      "question": "....... property is used to check the runtime data",
      "option": ["runtimeType", "typeOf", "instanceOf", "runtime"],
      "answerIndex": 0,
    },
    {
      "question": "Which data type used to declare string",
      "option": ["char", "string", "String", "str"],
      "answerIndex": 2,
    }
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int optionColor = -1;
  int correctAnswers = 0;

  MaterialStatePropertyAll<Color?> validateAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[questionIndex]["answerIndex"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void questionValidation() {
    setState(() {
      if (selectedAnswerIndex == -1) {
        return;
      }
      if (selectedAnswerIndex == allQuestions[questionIndex]["answerIndex"]) {
        correctAnswers++;
      }
      if (selectedAnswerIndex != -1) {
        if (questionIndex < allQuestions.length - 1) {
          setState(() {
            questionIndex++;
          });
        } else {
          questionIndex = 0;
          selectedAnswerIndex = -1;
          questionScreen = false;
        }
      }
    });
  }

  Scaffold screen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Qestions : ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${allQuestions[questionIndex]["question"]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 280,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: validateAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 0;
                    });
                  }
                },
                child: Text(
                  "A. ${allQuestions[questionIndex]["option"][0]}",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 280,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: validateAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                child: Text(
                  "B. ${allQuestions[questionIndex]["option"][1]}",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 280,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: validateAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                child: Text("C. ${allQuestions[questionIndex]["option"][2]}",
                    style: const TextStyle(fontSize: 18, color: Colors.black)),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 280,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: validateAnswer(3),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                child: Text(
                  "D. ${allQuestions[questionIndex]["option"][3]}",
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            optionColor = -1;

            setState(() {
              questionValidation();
              selectedAnswerIndex = -1;
            });
          },
          child: const Icon(Icons.arrow_forward_outlined, color: Colors.black),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 27,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmoGE8pGXE4aUURpYIETqvw6W5RZB-iVvKdw&usqp=CAU',
                height: 300,
                width: 200,
              ),
              const Text(
                "Congragulations!!!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Color.fromARGB(255, 32, 193, 38),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "You have completed $correctAnswers/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    questionScreen = true;
                    questionIndex = 0;
                    selectedAnswerIndex = -1;
                    correctAnswers = 0;
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return screen();
  }
}
