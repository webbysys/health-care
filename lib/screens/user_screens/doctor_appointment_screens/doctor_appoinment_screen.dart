import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/screens/user_screens/doctor_appointment_screens/otp_screen.dart';
import 'package:healthcare/widgets/appbar.dart';

import '../../../utilis/const_color.dart';
import '../../../utilis/mixins.dart';
class DoctorAppoinmentScreen extends StatefulWidget {
  const DoctorAppoinmentScreen({Key? key}) : super(key: key);

  @override
  State<DoctorAppoinmentScreen> createState() => _DoctorAppoinmentScreenState();
}

class _DoctorAppoinmentScreenState extends State<DoctorAppoinmentScreen> {
  String patientType= '',name ='',location='',age= '',weight= '';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantsColor.backgroundColor,
        child: Column(
          children: [
            AppDefaultBar(title: "BOOK AN APPOINTMENT", userNAme:" userNAme"),
            const SizedBox(height: 8,),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(vertical:-2),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(5)),

                                ),

                                buttonStyleData: const ButtonStyleData(
                                  height: 60,
                                  padding:  EdgeInsets.only(left: 00, right: 10),
                                ),

                                isExpanded: true,
                                hint: const Text(
                                  "PATIENT TYPE",
                                  style: TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.w500, color: ConstantsColor.primaryColor),
                                ),

                                items: Mixins()
                                    .patientType
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
                                    return 'Please Select District';
                                  }
                                  return null;
                                },

                              ),
                              const SizedBox(height: 8,),
                              const Text("PERSONAL DETAILS",style: TextStyle(

                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: ConstantsColor.primaryColor
                              ),),
                              const SizedBox(height: 8,),
                              TextFormField(
                                controller: _nameController,
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                                  labelText: '    Enter Your  Name',
                                  hintText:'  Enter Your  Name',
                                  border: OutlineInputBorder(

                                  ),
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                ),

                              ),
                              const SizedBox(height: 8,),
                              TextFormField(
                                controller: _ageController,
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                                  labelText: '    Enter Your Age',
                                  hintText: '    Enter Your Age',
                                  border: OutlineInputBorder(

                                  ),
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                ),

                              ),
                              const SizedBox(height: 8,),
                              TextFormField(
                                controller:_weightController,
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                                  labelText: '    Enter Your Weight',
                                  hintText:' Enter Your Weight',
                                  border: OutlineInputBorder(

                                  ),
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                ),

                              ),
                              const SizedBox(height: 8,),
                              TextFormField(
                                controller: _locationController,
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                                  labelText: '    Enter Your Location',
                                  hintText:'Enter Your Location',
                                  border: OutlineInputBorder(

                                  ),
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                ),

                              ),
                              const SizedBox(height: 8,),
                              DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(vertical:-2),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(5)),

                                ),

                                buttonStyleData: const ButtonStyleData(
                                  height: 60,
                                  padding:  EdgeInsets.only(left: 00, right: 10),
                                ),

                                isExpanded: true,
                                hint: const Text(
                                  "Gender",
                                  style: TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.w500, color: ConstantsColor.primaryColor),
                                ),

                                items: Mixins()
                                    .patientGender
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
                                    return 'Please Select Gender';
                                  }
                                  return null;
                                },

                              ),

                      ],)),
                      const SizedBox(height: 16,),
                      SizedBox(
                        width: double.maxFinite,
                        height: 52,
                        child: OutlinedButton(
                          onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DoctorAppoinmentOtpScreen()));
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
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
