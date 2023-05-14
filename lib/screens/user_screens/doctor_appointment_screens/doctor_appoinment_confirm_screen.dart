import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/utilis/const_color.dart';
import 'package:healthcare/widgets/appbar.dart';

import '../../../utilis/mixins.dart';

class DoctorAppoinmentConfirmScreen extends StatefulWidget {
  const DoctorAppoinmentConfirmScreen({Key? key}) : super(key: key);

  @override
  State<DoctorAppoinmentConfirmScreen> createState() =>
      _DoctorAppoinmentConfirmScreenState();
}

class _DoctorAppoinmentConfirmScreenState
    extends State<DoctorAppoinmentConfirmScreen> {
  final TextEditingController _refferedDate = TextEditingController();

  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));
    if (picked != null) {
      setState(() => {_refferedDate.text = picked.toString()});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantsColor.backgroundColor,
        child: Column(
          children: [
            AppDefaultBar(title: "BOOK AN APPOINMENT", userNAme: "userNAme"),
            const SizedBox(height: 8,),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("REFERRED DATE ",

                      style: TextStyle(
                        color: ConstantsColor.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      const SizedBox(height: 16,),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: _refferedDate,
                              onTap: (){
                                _selectDate();
                              },
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                                labelText: '   Referred Date',
                                hintText: '   Referred Date',
                                border: OutlineInputBorder(),
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontStyle: FontStyle.normal),
                                labelStyle: TextStyle(
                                    color: Colors.grey, fontStyle: FontStyle.normal),
                                suffixIcon: Icon(
                                  Icons.calendar_today,
                                  color: ConstantsColor.primaryColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16,),
                            const Text("TIME SLOTS ",

                              style: TextStyle(
                                  color: ConstantsColor.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),
                            const SizedBox(height: 16,),
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
                                    "Time Slots",
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
                                  .doctorAppoinmentSlots
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
                                  return   "Time Slots";
                                }
                                return null;
                              },

                            ),

                          ],
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("CONSULTATION CHARGE : ",

                            style: TextStyle(
                                color: ConstantsColor.greyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 18
                            ),),
                          Text(" 350 BDT ",

                            style: TextStyle(
                                color: ConstantsColor.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                        ],
                      ),
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
                            'REQUEST AN APPOINMENT',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16,),
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
