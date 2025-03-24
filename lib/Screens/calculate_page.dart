import 'package:bmi_caculator/Constance/constances.dart';
import 'package:bmi_caculator/main.dart';
import 'package:flutter/material.dart';

class CalculateScreen extends StatefulWidget {
  final String gender;
  const CalculateScreen({super.key, required this.gender});

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  int age = 30;
  int weight = 80;
  int hight = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gold,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: gold,
        centerTitle: true,
        title: Text(
          'FitBMI',
          style: TextStyle(fontFamily: 'msb', fontSize: 30, color: black),
        ),
      ),
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
                // SizedBox(height: ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [_getHight(), _getWeight()],
                ),
                _getContinueButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _getWeight() {
    return Container(
      height: 220,
      width: 175,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            'Weight',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'mr',
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$weight',
            style: TextStyle(
              color: Colors.white,
              fontSize: 55,
              fontFamily: 'mb',
            ),
          ),
          SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.remove, color: Colors.white, size: 24),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getHight() {
    return Container(
      height: 220,
      width: 175,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            'Hight',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'mr',
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$hight',
            style: TextStyle(
              color: Colors.white,
              fontSize: 55,
              fontFamily: 'mb',
            ),
          ),
          SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  if (hight > 140 && hight <= 250) {
                    setState(() {
                      hight--;
                    });
                    print(hight);
                  }
                },
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.remove, color: Colors.white, size: 24),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (hight >= 140 && hight < 250) {
                    setState(() {
                      hight++;
                    });
                    print(hight);
                  }
                },
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 24),
                ),
              ),
            ],
          ),
          SizedBox(height: 17),
        ],
      ),
    );
  }

  Widget _getAges() {
    return Container(
      height: 220,
      width: 175,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            'Age',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'mr',
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$age',
            style: TextStyle(
              color: Colors.white,
              fontSize: 64,
              fontFamily: 'mb',
            ),
          ),
          SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  if (age > 18 && age <= 120) {
                    setState(() {
                      age--;
                    });
                    print(age);
                  }
                },
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.remove, color: Colors.white, size: 24),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (age >= 18 && age < 120) {
                    setState(() {
                      age++;
                    });
                    print(age);
                  }
                },
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text _getDiscription() {
    return Text(
      'Please choose your gender.',
      style: TextStyle(color: black, fontFamily: 'mrb', fontSize: 27),
    );
  }

  SizedBox _getContinueButton(BuildContext context) {
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
          // if (gender == 'male' || gender == 'female') {
          //   print('clicked $gender');
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (BuildContext context) {
          //         return CalculateScreen(gender: gender);
          //       },
          //     ),
          //   );
          // }
          // // else {
          // //   Talker().error('Please select a gender before continuing.');
          // // }
        },

        child: Text(
          "Let's Calculate!",
          style: TextStyle(fontFamily: 'mb', fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
