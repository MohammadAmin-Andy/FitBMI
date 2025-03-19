import 'package:flutter/material.dart';

class CalculateScreen extends StatefulWidget {
  final String gender;
  const CalculateScreen({super.key, required this.gender});

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('${widget.gender}')));
  }
}
