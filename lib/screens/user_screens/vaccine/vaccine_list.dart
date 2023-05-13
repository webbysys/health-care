import 'package:flutter/material.dart';
import 'package:healthcare/screens/user_screens/vaccine/vaccine_details.dart';
import 'package:healthcare/screens/user_screens/vaccine/vaccine_order_screen.dart';

import 'package:healthcare/widgets/appbar.dart';

import '../../../utilis/const_color.dart';
import '../../../utilis/mixins.dart';

class VaccineList extends StatefulWidget {
  const VaccineList({Key? key}) : super(key: key);

  @override
  State<VaccineList> createState() => _VaccineListState();
}

class _VaccineListState extends State<VaccineList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantsColor.backgroundColor,
        child: Column(
          children: [
            AppDefaultBar(title: "VACCINE INFORMATION", userNAme: "userNAme"),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount:Mixins().vaccineList.length,
                itemBuilder: (context,int index){
                  return Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child:  Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 76,
                                  width: 76,
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Image(image: AssetImage(
                                    "${Mixins().vaccineList.elementAt(index)["images"]}",
                                  ),

                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text( "${Mixins().vaccineList.elementAt(index)["name"]}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,

                                          color: ConstantsColor.primaryColor
                                      ),
                                    ),
                                    const SizedBox(height: 4,),
                                    Text( "${Mixins().vaccineList.elementAt(index)[ "Disease"]}",
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,

                                        color: Color(0xff8F8F8F),
                                      ),
                                    ),
                                    const SizedBox(height: 4,),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const VaccineDetailsScreen()));
                                      },
                                      child: Container(
                                        height: 24,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: const Color(0xff4E8C82
                                          ).withOpacity(.30),
                                        ),
                                        child: const Center(
                                          child: Text( "Details",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Color(0xff0D534B),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Image(
                                      image: AssetImage("assets/doctor_image/3dot Icon.png"),
                                      color: Color(0xff8F8F8F),
                                      height: 24,
                                      width: 24,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(height: 12,),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>const VaccineOrderScreen()));
                                      },
                                      child: Container(
                                        height: 32,
                                        width: 109,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: ConstantsColor.primaryColor
                                        ),
                                        child: const Center(
                                          child: Text( "Order Now",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                      )
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
