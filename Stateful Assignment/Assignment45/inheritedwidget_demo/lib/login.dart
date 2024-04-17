import 'package:flutter/material.dart';
import 'package:inheritedwidget_demo/inheritedwidgetdemo.dart';
import 'home.dart';

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
                      return "Please Enter username";
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
                      return 'Email address cannot contain spaces';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  // PassData passData = PassData.of(context);
                  // passData.employee.id = idController.text;
                  // passData.employee.name = nameController.text;
                  // passData.employee.username = usernameController.text;
                  setState(() {
                    bool validatedata = formkey.currentState!.validate();
                    if (validatedata) {
                      // setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Login successful"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Plese enter details"),
                        ),
                      );
                    }
                  });
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
