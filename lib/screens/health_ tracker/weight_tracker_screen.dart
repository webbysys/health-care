import 'package:flutter/material.dart';

import '../../utilis/const_color.dart';
import '../../widgets/appbar.dart';
import 'health_tracker_screen.dart';
class WeightTrackerScreen extends StatefulWidget {
  const WeightTrackerScreen({Key? key}) : super(key: key);

  @override
  State<WeightTrackerScreen> createState() => _WeightTrackerScreenState();
}

class _WeightTrackerScreenState extends State<WeightTrackerScreen> {
  String date = '', weight = '';
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppDefaultBar(title: "BODY TEMPERATURE", userNAme: " userNAme"),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _dateController,
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 20),
                                labelText: '    yyyy-mm-dd',
                                hintText: '  yyyy-mm-dd',
                                border: OutlineInputBorder(),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.normal),
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              controller: _weightController,
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 20),
                                labelText: '    Enter BodyTemperature',
                                hintText: '    Enter BodyTemperature',
                                border: OutlineInputBorder(),
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.normal),
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),

                          ],
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => const HealthTrackerScreen()));
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: ConstantsColor.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          'SUBMIT',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Normal Weight Ranges: Body Mass Index (BMI)',
                      style: TextStyle(
                          color: ConstantsColor.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Underweight: ',
                          style: TextStyle(
                              color: ConstantsColor.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                         width: 2,
                        ),
                        Text(
                          'BMI is less than 18.5 ',
                          style: TextStyle(
                              color: ConstantsColor.greyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                    ],),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Normal weight: ',
                          style: TextStyle(
                              color: ConstantsColor.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'BMI is 18.5 to 24.9 ',
                          style: TextStyle(
                              color: ConstantsColor.greyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Overweight:  ',
                          style: TextStyle(
                              color: ConstantsColor.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'BMI is 25 to 29.9 ',
                          style: TextStyle(
                              color: ConstantsColor.greyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Obese: ',
                          style: TextStyle(
                              color: ConstantsColor.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'BMI is 30 or more',
                          style: TextStyle(
                              color: ConstantsColor.greyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],),
                    const Text(
                      'Calculating my BMI',
                      style: TextStyle(
                          color: ConstantsColor.primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'BMI = (your weight in pounds x 703) ÷ (your height in inches x your height in inches)For example,\nif you weigh 120 pounds and are 5 ft. 3 in. (63 in.) tall:\nBMI = (120 x 703) ÷ (63 x 63) or 84,360 ÷ 3969 = 21.3',
                      style: TextStyle(
                          color: ConstantsColor.greyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
