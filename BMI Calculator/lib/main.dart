// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:app1/bmi_Screen.dart';
import 'package:app1/bmi_result_screen.dart';

void main() {
  runApp(Myapp1());
}

class Myapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmiScreen(),
    );
  }
}
