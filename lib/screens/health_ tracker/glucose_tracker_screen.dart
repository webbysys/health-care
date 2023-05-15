import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../utilis/const_color.dart';
import '../../utilis/mixins.dart';
import '../../widgets/appbar.dart';
import 'health_tracker_screen.dart';
class GlucoseTrackerScreen extends StatefulWidget {
  const GlucoseTrackerScreen({Key? key}) : super(key: key);

  @override
  State<GlucoseTrackerScreen> createState() => _GlucoseTrackerScreenState();
}

class _GlucoseTrackerScreenState extends State<GlucoseTrackerScreen> {
  String date = '', result = '', diastolicBp = '', selectTimePeriod= '';
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _resultBpController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantsColor.backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDefaultBar(title: "GLUCOSE TRACKER", userNAme: " userNAme"),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Column(
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
                              DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(5)),

                                ),
                                buttonStyleData: const ButtonStyleData(
                                  height: 60,
                                  padding:  EdgeInsets.only(left: 00, right: 10),
                                ),

                                isExpanded: true,
                                hint: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Select TimePeriod",
                                      style: TextStyle(
                                          fontSize: 18,fontWeight: FontWeight.w500, color: ConstantsColor.primaryColor),
                                    ),
                                    Text(
                                      "*",
                                      style: TextStyle(
                                          fontSize: 16,fontWeight: FontWeight.w500, color: Colors.red),
                                    ),
                                  ],
                                ),

                                items: Mixins()
                                    .glucoseTestTimeperiod
                                    .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 16,
                                      ),
                                    )))
                                    .toList(),
                                onChanged: (value) {
                                  // print('value => $value');
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please Select TimePeriod';
                                  }
                                  return null;
                                },

                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                controller: _resultBpController,
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(vertical: 20),
                                  labelText: '   Your Glucose Test Result',
                                  hintText: '   Your Glucose Test Result',
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
                        'Normal and diabetic blood sugar ranges',
                        style: TextStyle(
                            color: ConstantsColor.primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'For the majority of healthy individuals, normal blood sugar levels are as follows:',
                        style: TextStyle(
                            color: ConstantsColor.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Between 4.0 to 5.4 mmol/L (72 to 99 mg/dL) when fasting [361]',
                        style: TextStyle(
                            color: ConstantsColor.greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                      const Text(
                        'Up to 7.8 mmol/L (140 mg/dL) 2 hours after eating',
                        style: TextStyle(
                            color: ConstantsColor.greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'For people with diabetes, blood sugar level targets are as follows:',
                        style: TextStyle(
                            color: ConstantsColor.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                      const Text(
                        'Before meals : 4 to 7 mmol/L for people with type 1 or type 2 diabetes',
                        style: TextStyle(
                            color: ConstantsColor.greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                      const Text(
                        'After meals : under 9 mmol/L for people with type 1 diabetes and under 8.5mmol/L for people with type 2 diabetes',
                        style: TextStyle(
                            color: ConstantsColor.greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
