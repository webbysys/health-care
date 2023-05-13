import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/widgets/appbar.dart';

import '../../../utilis/const_color.dart';
import '../../../utilis/mixins.dart';
class OverSeastreatmentScreen extends StatefulWidget {
  const OverSeastreatmentScreen({Key? key}) : super(key: key);

  @override
  State<OverSeastreatmentScreen> createState() => _OverSeastreatmentScreenState();
}

class _OverSeastreatmentScreenState extends State<OverSeastreatmentScreen> {
  String? selectDistrict= '', selectedPoliceStation = '', selecteArea= '',serviceType ='';
  String ? contactNumber ='',name = '';

  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppDefaultBar(title: "OVERSEAS TREATMENT", userNAme: "userNAme"),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text("Lorem Ipsum is simply dummy text.",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    const SizedBox(height: 8,),
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
                                    "Service Type",
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
                                  .virtualLabServiceType
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
                              controller: _nameController,
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                                labelText: '   Name ',
                                hintText:' Name',
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
                              controller: _numberController,
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                                labelText: '   Mobile Number ',
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

                          ],
                        )),
                    const SizedBox(height: 16,),
                    SizedBox(
                      width: double.maxFinite,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                          //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AmbulanceList()));
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
    );
  }
}
