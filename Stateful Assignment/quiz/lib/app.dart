import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class Question {
  final String? question;
  final List? option;
  final int? answerIndex;

  const Question({this.question, this.option, this.answerIndex});
}

class _QuizState extends State<Quiz> {
  List allQuestions = [
    const Question(
      question: "Which datatype hold the both value of int and double?",
      option: ["numeric", "int", "double", "num"],
      answerIndex: 3,
    ),
    const Question(
      question: "....... data type can be used to represent true or false",
      option: ["numeric", "int", "bool", "boolean"],
      answerIndex: 2,
    ),
    const Question(
      question: "Which of the following is not arithematic operator?",
      option: ["#", "/", "+", "-"],
      answerIndex: 0,
    ),
    const Question(
      question: "....... property is used to check the runtime data",
      option: ["runtimeType", "typeOf", "instanceOf", "runtime"],
      answerIndex: 0,
    ),
    const Question(
      question: "Which data type used to declare string",
      option: ["char", "string", "String", "str"],
      answerIndex: 2,
    ),
    const Question(
      question: "Which part of for loop is optional",
      option: [
        "Initialization",
        "Condition",
        "Interation",
        "None of the above"
      ],
      answerIndex: 3,
    ),
    const Question(
      question: "Null safety helps to prevent ........ pointer exception  ",
      option: ["runtime", "compiletime", "memory", "logical"],
      answerIndex: 1,
    ),
    const Question(
      question: "Which keyword is used to catch the exact exception?",
      option: ["catch", "on ", "if", "throw"],
      answerIndex: 1,
    ),
    const Question(
      question: "In dart, class can implements ....... interface",
      option: ["single", "static", "private", "multiple"],
      answerIndex: 3,
    ),
    const Question(
      question: "The scope of private instance variables in the class ",
      option: ["Class scope", "File scope", "Methos scope", "Folder scope"],
      answerIndex: 1,
    ),
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int selectedIndex = -1;
  int correctAnswers = 0;

  MaterialStatePropertyAll<Color?> buttonColor(int selectedButton) {
    if (selectedIndex != -1) {
      if (selectedButton == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (selectedButton == selectedIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void nextPage() {
    if (selectedIndex == -1) {
      return;
    }
    if (selectedIndex == allQuestions[questionIndex].answerIndex) {
      correctAnswers++;
    }
    if (selectedIndex != -1) {
      if (questionIndex < allQuestions.length - 1) {
        setState(() {
          questionIndex++;
        });
      } else {
        questionScreen = false;
        questionIndex = 0;
        selectedIndex = -1;
      }
    }
  }

  Scaffold isScaffold() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
          ),
          backgroundColor: Colors.blue.shade300,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                "Questions : ${questionIndex + 1}/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${allQuestions[questionIndex].question}",
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 30),

              //Button1
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: buttonColor(0),
                  ),
                  onPressed: () {
                    if (selectedIndex == -1) {
                      setState(() {
                        selectedIndex = 0;
                      });
                    }
                  },
                  child: Text(
                    "A. ${allQuestions[questionIndex].option[0]}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              //Button2
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: buttonColor(1),
                  ),
                  onPressed: () {
                    if (selectedIndex == -1) {
                      setState(() {
                        selectedIndex = 1;
                      });
                    }
                  },
                  child: Text(
                    "B. ${allQuestions[questionIndex].option[1]}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),
              //Button3
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: buttonColor(2),
                  ),
                  onPressed: () {
                    if (selectedIndex == -1) {
                      setState(() {
                        selectedIndex = 2;
                      });
                    }
                  },
                  child: Text(
                    "C. ${allQuestions[questionIndex].option[2]}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              //button4
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: buttonColor(3),
                  ),
                  onPressed: () {
                    if (selectedIndex == -1) {
                      setState(() {
                        selectedIndex = 3;
                      });
                    }
                  },
                  child: Text(
                    "D. ${allQuestions[questionIndex].option[3]}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                if (selectedIndex != -1) {
                  nextPage();
                  selectedIndex = -1;
                }
              });
            },
            child: const Icon(Icons.arrow_forward_outlined)),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result...",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade300,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmoGE8pGXE4aUURpYIETqvw6W5RZB-iVvKdw&usqp=CAU',
                height: 400,
                width: 300,
              ),
              const Text(
                "Congragulations..!",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "You have Completed $correctAnswers/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
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
    return isScaffold();
  }
}
