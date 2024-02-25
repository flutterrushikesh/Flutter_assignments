import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});
  @override
  State createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State {
  final TextEditingController _taskEditingController = TextEditingController();

  final FocusNode _taskFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Botton Sheet",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Create Task",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      child: TextField(
                        controller: _taskEditingController,
                        focusNode: _taskFocusNode,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: "Task",
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
