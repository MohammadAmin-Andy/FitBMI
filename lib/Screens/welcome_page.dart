import 'package:fitbmi/Constance/constances.dart';
import 'package:fitbmi/Screens/gender_page.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gold,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                _getTitle(),
                SizedBox(height: 10),
                _getWelcomeImage(),
                _getDiscriptionsText(),
                SizedBox(height: 38),
                _getStartButton(context),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _getStartButton(BuildContext context) {
    return SizedBox(
      width: 332,
      height: 75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(63),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return GenderScreen(); // Replace 'male' with the appropriate value
              },
            ),
          );
        },
        child: Text(
          'Get Started',
          style: TextStyle(fontFamily: 'mb', fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  Image _getWelcomeImage() => Image.asset('assets/images/welcome.webp');

  Text _getTitle() {
    return Text(
      'FitBMI',
      style: TextStyle(fontFamily: 'msb', fontSize: 30, color: black),
    );
  }

  Padding _getDiscriptionsText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        spacing: 15,
        children: [
          Text(
            'Take the First Step Towards Better Health!',
            style: TextStyle(fontFamily: 'ms', fontSize: 23, color: black),
          ),
          Text(
            'Calculate your BMI effortlessly and stay on track with your wellness journey.',
            style: TextStyle(fontFamily: 'mrb', fontSize: 15, color: black),
          ),
        ],
      ),
    );
  }
}
