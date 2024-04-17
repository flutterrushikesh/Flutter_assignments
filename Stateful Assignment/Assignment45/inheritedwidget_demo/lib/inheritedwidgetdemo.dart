import 'package:flutter/material.dart';
import 'modelclass.dart';

class PassData extends InheritedWidget {
  final String id;
  final String userName;
  final String name;

  final Employee employee;
  const PassData({
    super.key,
    required this.employee,
    required this.id,
    required this.userName,
    required this.name,
    required super.child,
  });

  static PassData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PassData>()!;
  }

  @override
  bool updateShouldNotify(PassData oldWidget) {
    return employee != oldWidget.employee;
  }
}
