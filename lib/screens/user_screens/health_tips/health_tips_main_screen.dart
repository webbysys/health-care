import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthcare/screens/user_screens/health_tips/health_tips_list_screen.dart';

import '../../../utilis/const_color.dart';

class HealtipsMainScreen extends StatefulWidget {
  const HealtipsMainScreen({Key? key}) : super(key: key);

  @override
  State<HealtipsMainScreen> createState() => _HealtipsMainScreenState();
}

class _HealtipsMainScreenState extends State<HealtipsMainScreen>
    with TickerProviderStateMixin {
  String? search = '';
  final TextEditingController _searchController = TextEditingController();
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 152,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0)),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //SizedBox(height: 42,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi, Muhammad!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0F4B97)),
                      ),
                      Text(
                        "Welcome back",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0F4B97)),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/home_screen/bell.svg",
                    height: 32,
                    width: 32,
                    color: const Color(0xff0F4B97),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _searchController,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xffE8EFFA),
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          labelText: '     Search your Topic ',
                          hintText: ' Search',
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.normal),
                          labelStyle: TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.normal),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstantsColor.primaryColor))),
                    ),
                  ),
                  const VerticalDivider(),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ConstantsColor.primaryColor),
                    child: const Center(
                      child: Icon(
                        Icons.search,
                        size: 24,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Container(
        color: ConstantsColor.backgroundColor,
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TabBar(
                        indicatorColor: Colors.transparent,
                        isScrollable: true,
                        labelColor: ConstantsColor.primaryColor,
                        unselectedLabelColor: ConstantsColor.greyColor,
                        labelPadding: const EdgeInsets.only(left: 6, right: 6),
                        /*  indicator: BoxDecoration(
                          border: Border.all(color: ConstantsColor.primaryColor,),
                          borderRadius: BorderRadius.circular(4),
                          color: ConstantsColor.primaryColor,),*/
                        tabs: const [
                          Tab(
                              child: Text(
                            " Suggested",
                            style: TextStyle(),
                          )),
                          Tab(
                              child: Text(
                            " Trending",
                            style: TextStyle(),
                          )),
                          Tab(
                              child: Text(
                            " Top views",
                            style: TextStyle(),
                          )),
                          Tab(
                              child: Text(
                            " Update",
                            style: TextStyle(),
                          )),
                          Tab(
                              child: Text(
                            "Dental",
                            style: TextStyle(),
                          ))
                        ],
                        controller: _tabController,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
                child: TabBarView(
              controller: _tabController,
              children: const [
                HealthtipsListScreen(),
                Center(child: Text("Not Available Yet")),
                Center(child: Text("Not Available Yet")),
                Center(child: Text("Not Available Yet")),
                Center(child: Text("Not Available Yet")),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
