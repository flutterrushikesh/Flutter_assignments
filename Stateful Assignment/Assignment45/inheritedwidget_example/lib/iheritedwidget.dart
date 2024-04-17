import 'package:flutter/material.dart';

class EmployeeData extends InheritedWidget {
  final String id;
  final String username;
  final String name;

  const EmployeeData({
    super.key,
    required this.id,
    required this.username,
    required this.name,
    required super.child,
  });

  @override
  bool updateShouldNotify(EmployeeData oldWidget) {
    if (id != oldWidget.id) {
      return true;
    } else if (username != oldWidget.username) {
      return true;
    } else if (name != oldWidget.name) {
      return true;
    }
    return false;
  }

  static EmployeeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }
}
