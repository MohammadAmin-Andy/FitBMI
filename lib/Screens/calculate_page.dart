import 'package:bmi_caculator/Constance/constances.dart';
import 'package:bmi_caculator/Screens/result_page.dart';
import 'package:bmi_caculator/main.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  final String gender;
  const InfoScreen({super.key, required this.gender});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  int age = 30;
  int weight = 80;
  int hight = 170;
  String status = '';
  String statusDiscriptions = '';
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
                // SizedBox(height: ),
                Wrap(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  spacing: 5,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: [_getHight(), _getWeight(), _getAges()],
                ),
                _getContinueButton(),
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
            'Weight(kg)',
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
                onTap: () {
                  if (weight > 30 && weight <= 200) {
                    setState(() {
                      weight--;
                    });
                    print(weight);
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
                  if (weight >= 30 && weight < 200) {
                    setState(() {
                      weight++;
                    });
                    print(weight);
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
            'Hight(cm)',
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
      'Please enter your info.',
      style: TextStyle(color: black, fontFamily: 'mrb', fontSize: 27),
    );
  }

  SizedBox _getContinueButton() {
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
          double resultBMI = weight / ((hight / 100) * (hight / 100));
          resultBMI = double.parse(resultBMI.toStringAsFixed(2));
          // fist here we should manage people by age, people under 65 are young and over 65 are old. && and by genders
          switch (age) {
            case var age when age <= 65 && widget.gender == 'male':
              setState(() {
                if (resultBMI < 20) {
                  status = 'Underweight';
                  statusDiscriptions =
                      "For individuals with underweight, increasing calorie intake with nutritious, protein-rich foods can help with healthy weight gain. It's recommended to include calorie-dense shakes, nuts, and protein sources in the diet. Additionally, focusing on regular, calorie-rich meals can be beneficial in this process.";
                } else if (resultBMI >= 20 && resultBMI < 25) {
                  status = 'Normal';
                  statusDiscriptions =
                      "To maintain a normal BMI, it is recommended to follow a balanced diet that includes fruits, vegetables, lean proteins, and whole grains. Regular physical activity, such as walking, running, or resistance training, can also help maintain a healthy and balanced weight. It's important to keep your weight within the healthy range to prevent health issues.";
                } else if (resultBMI >= 25 && resultBMI < 30) {
                  status = 'OverWeight';
                  statusDiscriptions =
                      "If you're overweight, focusing on a balanced diet with fewer calories, along with regular physical activity, can help reduce weight in a healthy way. Aim to include more fruits, vegetables, and lean proteins while cutting down on processed foods and sugars. Consistency is key to achieving and maintaining a healthy weight.";
                } else {
                  status = 'Obese';
                  statusDiscriptions =
                      "If you're obese, it's important to follow a suitable diet and exercise plan under the supervision of a doctor or nutritionist. Gradually reducing calorie intake, increasing physical activity, and focusing on healthy nutrition can help with weight loss. In some cases, medical treatments or surgery may be recommended for weight reduction, but this should always be done in consultation with a doctor.";
                }
              });

              break;

            case var age when age > 65 && widget.gender == 'male':
              setState(() {
                if (resultBMI < 21) {
                  status = 'Underweight';
                  statusDiscriptions =
                      "For individuals with underweight, increasing calorie intake with nutritious, protein-rich foods can help with healthy weight gain. It's recommended to include calorie-dense shakes, nuts, and protein sources in the diet. Additionally, focusing on regular, calorie-rich meals can be beneficial in this process.";
                } else if (resultBMI >= 21 && resultBMI < 27) {
                  status = 'Normal';
                  statusDiscriptions =
                      "To maintain a normal BMI, it is recommended to follow a balanced diet that includes fruits, vegetables, lean proteins, and whole grains. Regular physical activity, such as walking, running, or resistance training, can also help maintain a healthy and balanced weight. It's important to keep your weight within the healthy range to prevent health issues.";
                } else if (resultBMI >= 27 && resultBMI < 30) {
                  status = 'OverWeight';
                  statusDiscriptions =
                      "If you're overweight, focusing on a balanced diet with fewer calories, along with regular physical activity, can help reduce weight in a healthy way. Aim to include more fruits, vegetables, and lean proteins while cutting down on processed foods and sugars. Consistency is key to achieving and maintaining a healthy weight.";
                } else {
                  status = 'Obese';
                  statusDiscriptions =
                      "If you're obese, it's important to follow a suitable diet and exercise plan under the supervision of a doctor or nutritionist. Gradually reducing calorie intake, increasing physical activity, and focusing on healthy nutrition can help with weight loss. In some cases, medical treatments or surgery may be recommended for weight reduction, but this should always be done in consultation with a doctor.";
                }
              });
              break;

            case var age when age <= 65 && widget.gender == 'female':
              setState(() {
                if (resultBMI < 19) {
                  status = 'Underweight';
                  statusDiscriptions =
                      "For individuals with underweight, increasing calorie intake with nutritious, protein-rich foods can help with healthy weight gain. It's recommended to include calorie-dense shakes, nuts, and protein sources in the diet. Additionally, focusing on regular, calorie-rich meals can be beneficial in this process.";
                } else if (resultBMI >= 19 && resultBMI < 24) {
                  status = 'Normal';
                  statusDiscriptions =
                      "To maintain a normal BMI, it is recommended to follow a balanced diet that includes fruits, vegetables, lean proteins, and whole grains. Regular physical activity, such as walking, running, or resistance training, can also help maintain a healthy and balanced weight. It's important to keep your weight within the healthy range to prevent health issues.";
                } else if (resultBMI >= 24 && resultBMI < 29) {
                  status = 'OverWeight';
                  statusDiscriptions =
                      "If you're overweight, focusing on a balanced diet with fewer calories, along with regular physical activity, can help reduce weight in a healthy way. Aim to include more fruits, vegetables, and lean proteins while cutting down on processed foods and sugars. Consistency is key to achieving and maintaining a healthy weight.";
                } else {
                  status = 'Obese';
                  statusDiscriptions =
                      "If you're obese, it's important to follow a suitable diet and exercise plan under the supervision of a doctor or nutritionist. Gradually reducing calorie intake, increasing physical activity, and focusing on healthy nutrition can help with weight loss. In some cases, medical treatments or surgery may be recommended for weight reduction, but this should always be done in consultation with a doctor.";
                }
              });
              break;

            // case var age when age > 65 && widget.gender == 'female':
            //   break;
            case var age when age > 65 && widget.gender == 'female':
              setState(() {
                if (resultBMI < 21) {
                  status = 'Underweight';
                  statusDiscriptions =
                      "For individuals with underweight, increasing calorie intake with nutritious, protein-rich foods can help with healthy weight gain. It's recommended to include calorie-dense shakes, nuts, and protein sources in the diet. Additionally, focusing on regular, calorie-rich meals can be beneficial in this process.";
                } else if (resultBMI >= 21 && resultBMI < 27) {
                  status = 'Normal';
                  statusDiscriptions =
                      "To maintain a normal BMI, it is recommended to follow a balanced diet that includes fruits, vegetables, lean proteins, and whole grains. Regular physical activity, such as walking, running, or resistance training, can also help maintain a healthy and balanced weight. It's important to keep your weight within the healthy range to prevent health issues.";
                } else if (resultBMI >= 27 && resultBMI < 30) {
                  status = 'OverWeight';
                  statusDiscriptions =
                      "If you're overweight, focusing on a balanced diet with fewer calories, along with regular physical activity, can help reduce weight in a healthy way. Aim to include more fruits, vegetables, and lean proteins while cutting down on processed foods and sugars. Consistency is key to achieving and maintaining a healthy weight.";
                } else {
                  status = 'Obese';
                  statusDiscriptions =
                      "If you're obese, it's important to follow a suitable diet and exercise plan under the supervision of a doctor or nutritionist. Gradually reducing calorie intake, increasing physical activity, and focusing on healthy nutrition can help with weight loss. In some cases, medical treatments or surgery may be recommended for weight reduction, but this should always be done in consultation with a doctor.";
                }
              });
              break;

            default:
              setState(() {
                status = 'Unknown';
                statusDiscriptions = 'Unable to determine BMI status.';
              });
              break;
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return ResultScreen(
                  age: age,
                  gender: widget.gender,
                  resultBMI: resultBMI,
                  status: status,
                  statusDiscriptions: statusDiscriptions,
                );
              },
            ),
          );
        },

        child: Text(
          "Let's Calculate!",
          style: TextStyle(fontFamily: 'mb', fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
