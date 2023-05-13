import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/widgets/appbar.dart';

import '../../../utilis/const_color.dart';
import '../../../utilis/mixins.dart';

class VaccineOrderScreen extends StatefulWidget {
  const VaccineOrderScreen({Key? key}) : super(key: key);

  @override
  State<VaccineOrderScreen> createState() => _VaccineOrderScreenState();
}

class _VaccineOrderScreenState extends State<VaccineOrderScreen> {
  String? selectDistrict= '', selectedPoliceStation = '', selecteArea= '',bloodGroup ='',rhFactor='';
  String ? contactNumber ='';

  final TextEditingController _numberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppDefaultBar(title: "VACCINE ORDER", userNAme: "userNAme"),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
                  child: Column(
                    children: [
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
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
                                      "Select District",
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
                                    .District
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
                                      "Select Police Station",
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
                                    .District
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
                                    return 'Please Select Police Station';
                                  }
                                  return null;
                                },

                              ),
                              const SizedBox(height: 8,),
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
                                      "Select Area",
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
                                    .District
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
                                    return   "Select Area";
                                  }
                                  return null;
                                },

                              ),
                              const SizedBox(height: 8,),
                              TextFormField(
                                controller: _numberController,
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                                  labelText: '  Enter Your Mobile Number',
                                  hintText:' Mobile Number',
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


                            ],
                          )),
                      const SizedBox(height: 16,),
                      SizedBox(
                        width: double.maxFinite,
                        height: 52,
                        child: OutlinedButton(
                          onPressed: () {
                         //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const BloodBankListScreen()));
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: ConstantsColor.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text(
                            'ORDER',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
