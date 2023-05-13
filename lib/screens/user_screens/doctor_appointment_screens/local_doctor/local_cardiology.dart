import 'package:flutter/material.dart';

import '../../../../utilis/const_color.dart';
import '../../../../utilis/mixins.dart';
import '../doctor_appoinment_screen.dart';
class LocalCardiology extends StatefulWidget {
  const LocalCardiology({Key? key}) : super(key: key);

  @override
  State<LocalCardiology> createState() => _LocalCardiologyState();
}

class _LocalCardiologyState extends State<LocalCardiology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount:Mixins().doctorDetails.length,
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
                                  "${Mixins().doctorDetails.elementAt(index)["images"]}",
                                ),

                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text( "${Mixins().doctorDetails.elementAt(index)["name"]}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,

                                        color: ConstantsColor.primaryColor
                                    ),
                                  ),
                                  const SizedBox(height: 4,),
                                  Text( "${Mixins().doctorDetails.elementAt(index)["speciality"]}",
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,

                                      color: Color(0xff8F8F8F),
                                    ),
                                  ),
                                  const SizedBox(height: 4,),
                                  Container(
                                    height: 24,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xff4E8C82
                                      ).withOpacity(.30),
                                    ),
                                    child: const Center(
                                      child: Text( "Available",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff0D534B),
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
                                  Container(
                                    child: const Image(
                                      image: AssetImage("assets/doctor_image/3dot Icon.png"),
                                      color: Color(0xff8F8F8F),
                                      height: 24,
                                      width: 24,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 12,),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DoctorAppoinmentScreen()));
                                    },
                                    child: Container(
                                      height: 32,
                                      width: 109,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: ConstantsColor.primaryColor
                                      ),
                                      child: const Center(
                                        child: Text( "Appoinment",
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
      ],),
    );
  }
}
