import 'package:flutter/material.dart';
import 'package:healthcare/screens/user_screens/doctor_appointment_screens/local_doctor/local_cardiology.dart';

import '../../../../utilis/const_color.dart';
class LocalDoctor extends StatefulWidget {
  const LocalDoctor({Key? key}) : super(key: key);

  @override
  State<LocalDoctor> createState() => _LocalDoctorState();
}

class _LocalDoctorState extends State<LocalDoctor> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 7, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantsColor.backgroundColor,
        child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 8, right: 8,top: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TabBar(
                      isScrollable: true,
                      labelColor: Colors.white,
                      unselectedLabelColor: ConstantsColor.primaryColor,
                      labelPadding: const EdgeInsets.only(left: 8,right: 8),
                      indicatorPadding:const EdgeInsets.only(top:6,bottom: 6) ,
                      indicator: BoxDecoration(
                          border: Border.all(color: ConstantsColor.primaryColor,),
                          borderRadius: BorderRadius.circular(4),
                          color: ConstantsColor.primaryColor,),
                      tabs: const [
                        Tab(
                          child: Text(
                            "Cardiology",
                            style: TextStyle(),
                          ),
                        ),
                        Tab(
                            child: Text(
                              "Orthopedics",
                              style: TextStyle(),
                            )),
                        Tab(
                            child: Text(
                              "Neurosurgery",
                              style: TextStyle(),
                            )),
                        Tab(
                            child: Text(
                              "Internal medicine",
                              style: TextStyle(),
                            )),
                        Tab(
                            child: Text(
                              "Family medicine",
                              style: TextStyle(),
                            )),
                        Tab(
                            child: Text(
                              "General surgery",
                              style: TextStyle(),
                            )),
                        Tab(
                            child: Text(
                              "Gastroenterology",
                              style: TextStyle(),
                            ))
                      ],
                      controller: _tabController,
                    ),
                  ),
                ],
              )),
          Flexible(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  LocalCardiology(),
                  Center(child: Text("Not Available Yet")),
                  Center(child: Text("Not Available Yet")),
                  Center(child: Text("Not Available Yet")),
                  Center(child: Text("Not Available Yet")),
                  Center(child: Text("Not Available Yet")),
                  Center(child: Text("Not Available Yet")),
                ],
              ))
         ],
    ),
      ),);
  }
}
