import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthcare/screens/user_screens/doctor_appointment_screens/doctor_appoinment_screen.dart';
import 'package:healthcare/screens/user_screens/doctor_appointment_screens/foreign_doctor/foreign_doctor.dart';
import 'package:healthcare/screens/user_screens/doctor_appointment_screens/local_doctor/local_doctor.dart';
import 'package:healthcare/utilis/const_color.dart';
import 'package:healthcare/utilis/mixins.dart';
class DoctorListScreen extends StatefulWidget {
  const DoctorListScreen({Key? key}) : super(key: key);

  @override
  State<DoctorListScreen> createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            padding: EdgeInsets.only(bottom: 8,left: 4,right: 4),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Creates border
                  color: ConstantsColor.primaryColor),
              labelColor: Colors.white,
              unselectedLabelColor: ConstantsColor.primaryColor,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              tabs:[
            Tab(
              text: "Local",
            ),
            Tab(text: "Foreign",)
          ]),
          toolbarHeight: 90,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0)),
          ),
          title: Column(
            children: [
              //SizedBox(height: 42,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Hi, Muhammad!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0F4B97)
                        ),
                      ),
                      Text("Welcome back",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0F4B97)
                        ),
                      )
                    ],
                  ),
                  SvgPicture.asset("assets/home_screen/bell.svg",
                    height: 32,
                    width: 32,
                    color: const Color(0xff0F4B97) ,
                  )
                ],
              ),
              const SizedBox(height: 4,),
            ],

          ),
        ),
        body: TabBarView(children: [
          LocalDoctor(),
          ForeignDoctor()

        ])
      ),
    );
  }
}
/*
Column(
                       children: [
                         Row(
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
                             const VerticalDivider(),
                             Container(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         Text( "${Mixins().doctorDetails.elementAt(index)["name"]}",
                                         style: const TextStyle(
                                           fontWeight: FontWeight.w700,
                                           fontSize: 18,

                                           color: ConstantsColor.primaryColor
                                         ),
                                         ),
                                       SizedBox(width: 110,),
                                         const Image(
                                           image: AssetImage("assets/doctor_image/3dot Icon.png"),
                                           color: Color(0xff8F8F8F),
                                           height: 24,
                                           width: 24,
                                           fit: BoxFit.cover,
                                         )
                                       ],
                                     ),
                                   ),
                                   Text( "${Mixins().doctorDetails.elementAt(index)["speciality"]}",
                                     textAlign: TextAlign.start,
                                     style: const TextStyle(
                                         fontWeight: FontWeight.w400,
                                         fontSize: 16,

                                         color: Color(0xff8F8F8F),
                                     ),
                                   ),
                                  const SizedBox(height: 8,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
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
                                   SizedBox(width:85 ,),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DoctorAppoinmentScreen()));
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
                           ],
                         ),
                       ],
                     ),*/