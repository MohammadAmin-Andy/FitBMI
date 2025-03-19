import 'package:bmi_caculator/Constance/constances.dart';
import 'package:bmi_caculator/Screens/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Applications());
}

class Applications extends StatelessWidget {
  const Applications({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
