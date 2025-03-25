import 'package:fitbmi/Constance/constances.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String status;
  final String statusDiscriptions;
  final double resultBMI;
  final String gender;
  final int age;
  ResultScreen({
    super.key,
    required this.age,
    required this.resultBMI,
    required this.status,
    required this.statusDiscriptions,
    required this.gender,
  });
  @override
  Widget build(BuildContext context) {
    double decimalNumber =
        double.parse(resultBMI.toStringAsFixed(0)) -
        double.parse(resultBMI.toStringAsFixed(2));
    return Scaffold(
      backgroundColor: gold,
      appBar: _getAppbar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            spacing: 40,
            children: [_getDiscription(), _getResultBox(decimalNumber)],
          ),
        ),
      ),
    );
  }

  Container _getResultBox(double decimalNumber) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 450,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BMI Results',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'rmb',
              fontSize: 33,
            ),
          ),
          SizedBox(height: 163, child: _getNumberResults(decimalNumber)),
          SizedBox(height: 20),
          Text(
            '$status for $gender in $age',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'rmb',
              fontSize: 22,
            ),
          ),
          SizedBox(height: 7),
          Text(
            '$statusDiscriptions',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'rm',
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Row _getNumberResults(double decimalNumber) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${resultBMI.toInt()}',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'rmb',
            fontSize: 140,
          ),
        ),
        Text(
          '.',
          style: TextStyle(color: Colors.white, fontFamily: 'rm', fontSize: 42),
        ),
        Text(
          '${decimalNumber.toStringAsFixed(2).split('.')[1]}',
          style: TextStyle(color: Colors.white, fontFamily: 'rm', fontSize: 42),
        ),
      ],
    );
  }

  Text _getDiscription() {
    return Text(
      'Body Mass Index',
      style: TextStyle(color: black, fontFamily: 'mrb', fontSize: 35),
    );
  }

  AppBar _getAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: gold,
      centerTitle: true,
      title: Text(
        'FitBMI',
        style: TextStyle(fontFamily: 'msb', fontSize: 30, color: black),
      ),
    );
  }
}
