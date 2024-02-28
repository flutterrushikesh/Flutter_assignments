import 'package:flutter/material.dart';
import 'dynamiccard.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      home:DynamicCart(),
      debugShowCheckedModeBanner:false,
    );
  }
}