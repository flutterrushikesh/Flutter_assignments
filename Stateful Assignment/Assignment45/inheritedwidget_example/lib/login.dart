import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inheritedwidget_example/iheritedwidget.dart';
// import 'package:inheritedwidget_demo/inheritedwidgetdemo.dart';
import 'home.dart';
// import 'inheritedwidget.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _LoginState();
}

class _LoginState extends State {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formkey,
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
                  controller: idController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "id",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter id";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(height: 25),
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
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: "name",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter name";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(height: 25),
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
                  controller: usernameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "username",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter username';
                    } else if (value.contains(' ')) {
                      return 'Username cannot contain spaces';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  bool validateEmployee = formkey.currentState!.validate();
                  if (validateEmployee) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return EmployeeData(
                              id: idController.text,
                              username: usernameController.text,
                              name: nameController.text,
                              child: const Home());
                        },
                      ),
                    );
                  }
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
                  "Sign in",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
