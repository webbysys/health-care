import 'package:flutter/material.dart';
import 'package:healthcare/screens/user_screens/vaccine/vaccine_order_screen.dart';
import 'package:healthcare/widgets/appbar.dart';

import '../../../utilis/const_color.dart';


class VaccineDetailsScreen extends StatefulWidget {
  const VaccineDetailsScreen({Key? key}) : super(key: key);

  @override
  State<VaccineDetailsScreen> createState() => _VaccineDetailsScreenState();
}

class _VaccineDetailsScreenState extends State<VaccineDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppDefaultBar(title: "VACCINE DETAILS", userNAme:" userNAme"),
          const SizedBox(height: 8,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 228,
                          width: double.maxFinite,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                          child: const Image(
                            image: AssetImage("assets/vaccine/bcg.png"),
                            height: 226,
                            width: double.maxFinite,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(height: 16,),
                        const Text("BCG",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: ConstantsColor.primaryColor
                          ),
                        ),
                        const SizedBox(height: 16,),
                        const Text("Tuberculosis",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: ConstantsColor.primaryColor
                          ),
                        ),
                        const SizedBox(height: 16,),
                        const Text("Symptoms and effects",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: ConstantsColor.greyColor
                          ),
                        ),

                        const SizedBox(height: 16,),
                        const Text("Tuberculosis (TB) is an infection that most often attacks the lungs, but in infants and young children, affects other organs like the brain. A severe case could cause serious complications or deat \n \n TB is very difficult to treat when contracted, and treatment is lengthy and not always successful.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ConstantsColor.greyColor
                          ),
                        ),
                        const SizedBox(height: 32,),
                        SizedBox(
                          width: double.maxFinite,
                          height: 52,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>const VaccineOrderScreen()));

                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: ConstantsColor.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              'ORDER NOW',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32,),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
