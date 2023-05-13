import 'package:flutter/material.dart';
import 'package:healthcare/screens/home_screen.dart';
import 'package:healthcare/utilis/const_color.dart';

class MainBoardCheck extends StatefulWidget {
  const MainBoardCheck({Key? key}) : super(key: key);

  @override
  State<MainBoardCheck> createState() => _MainBoardCheckState();
}

class _MainBoardCheckState extends State<MainBoardCheck> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const Page2(),
    const Page3(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,

      ),
      bottomNavigationBar:Container(
      height: 60,
        decoration: const BoxDecoration(
          color: Color(0xffF9FBFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child:Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    child: Container(

                      child:pageIndex == 0
                          ? Column(
                        children: [
                          const Icon(
                            Icons.home_filled,
                            color:ConstantsColor.primaryColor,
                            size: 30,
                          ),
                          // SizedBox(height: 2,),
                          Container(height: 5,width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5,
                                ),
                                color: ConstantsColor.primaryColor
                            ),
                          )

                        ],
                      )
                          : Column(
                        children: const [
                          Icon(
                            Icons.home_filled,
                            color:ConstantsColor.primaryColor,
                            size: 30,
                          ),
                          // SizedBox(height: 2,),
                          Text("Home",
                            style: TextStyle(
                              fontSize: 12,
                                color:Colors.black54
                            ),
                          )

                        ],
                      ) ,
                    ),
                  ),
                ],
              ),
              Container(width:1,height:40,color:  Colors.black.withOpacity(0.4)),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    child: Container(
                      child:pageIndex == 1
                          ? Column(
                        children: [
                          const Icon(
                            Icons.call,
                            color: ConstantsColor.primaryColor,
                            size: 30,
                          ),
                          // SizedBox(height: 2,),
                          Container(height: 5,width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5,
                                ),
                                color: ConstantsColor.primaryColor
                            ),
                          )

                        ],
                      )
                          : Column(
                        children: const [
                          Icon(
                            Icons.call,
                            color: ConstantsColor.primaryColor,
                            size: 30,
                          ),
                          // SizedBox(height: 2,),
                          Text("Emergency",
                            style: TextStyle(
                              fontSize: 12,
                                color:Colors.black54
                            ),
                          )

                        ],
                      ) ,
                    ),
                  ),
                ],
              ),
              Container(width: 1,height:40,color:  Colors.black.withOpacity(0.4),),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    child: Container(
                      color: Colors.transparent,
                      height: 50,
                      child:pageIndex == 2
                          ? Column(
                        children: [
                          const Icon(
                            Icons.person_2_outlined,
                            color: ConstantsColor.primaryColor,
                            size: 30,
                          ),
                          // SizedBox(height: 2,),
                          Container(height: 5,width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5,
                                ),
                                color: ConstantsColor.primaryColor
                            ),
                          )

                        ],
                      )
                          : Column(
                        children: const [
                          Icon(
                            Icons.person_2_outlined,
                            color: ConstantsColor.primaryColor,
                            size: 30,
                          ),
                          // SizedBox(height: 2,),
                          Text("Profile",
                            style: TextStyle(
                              fontSize: 12,
                                color:Colors.black54
                            ),
                          )

                        ],
                      ) ,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
