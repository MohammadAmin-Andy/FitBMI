import 'package:fitbmi/Constance/constances.dart';
import 'package:fitbmi/Screens/calculate_page.dart';
// import 'package:FitBMI/Screens/info_page.dart';
import 'package:flutter/material.dart';
// import 'package:talker_flutter/talker_flutter.dart';

class GenderScreen extends StatefulWidget {
  final String gender;
  GenderScreen({super.key, this.gender = ''});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String gender = '';
  Color maleColor = lightGreenCont;
  Color femaleColor = lightOrangeCont;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gold,
      appBar: _getAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 30,
              children: [
                _getDiscription(),
                _getMaleSelector(),
                getFemaleSelector(),
                SizedBox(height: 60),
                //_getContinueButton(context, gender),
              ],
            ),
          ),
        ),
      ),
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

  SizedBox _getContinueButton(BuildContext context, String gender) {
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
          if (gender == 'male' || gender == 'female') {
            print('clicked $gender');
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return InfoScreen(gender: gender);
                },
              ),
            );
          }
          // else {
          //   Talker().error('Please select a gender before continuing.');
          // }
        },

        child: Text(
          'Continue',
          style: TextStyle(fontFamily: 'mb', fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  InkWell getFemaleSelector() {
    return InkWell(
      onTap: () {
        setState(() {
          gender = 'female';
          print(gender);
          selectedColor(gender);
        });

        Future.delayed(Duration(milliseconds: 200), () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => InfoScreen(gender: gender),
            ),
          );
        });
      },
      child: Container(
        width: 370,
        height: 180,
        decoration: BoxDecoration(
          color: femaleColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Female',
              style: TextStyle(fontSize: 32, color: black, fontFamily: 'ms'),
            ),
            SizedBox(width: 28),
            Image.asset(
              'assets/images/female.webp',
              height: 140,
              width: 131.86,
            ),
          ],
        ),
      ),
    );
  }

  InkWell _getMaleSelector() {
    return InkWell(
      onTap: () {
        setState(() {
          gender = 'male';
          print(gender);
          selectedColor(gender);
        });
        Future.delayed(Duration(milliseconds: 200), () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => InfoScreen(gender: gender),
            ),
          );
        });
      },
      child: Container(
        width: 370,
        height: 180,
        decoration: BoxDecoration(
          color: maleColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Male',
              style: TextStyle(fontSize: 32, color: black, fontFamily: 'ms'),
            ),
            SizedBox(width: 70),
            Image.asset('assets/images/male.webp', height: 140, width: 131.86),
          ],
        ),
      ),
    );
  }

  Text _getDiscription() {
    return Text(
      'Please choose your gender.',
      style: TextStyle(color: black, fontFamily: 'mrb', fontSize: 27),
    );
  }

  void selectedColor(String gender) {
    if (gender == 'male') {
      maleColor = selectedMaleColor;
      femaleColor = lightOrangeCont;
    } else if (gender == 'female') {
      femaleColor = selectedFemaleColor;
      maleColor = lightGreenCont;
    } else {
      maleColor = lightGreenCont;
      femaleColor = lightOrangeCont;
    }
  }

  @override
  void dispose() {
    gender = '';
    maleColor = lightGreenCont;
    femaleColor = lightOrangeCont;
    super.dispose();
  }
}
