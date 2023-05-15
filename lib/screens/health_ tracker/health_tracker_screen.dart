import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/screens/health_%20tracker/body_temparature_screen.dart';
import 'package:healthcare/screens/health_%20tracker/bp_tracker.dart';
import 'package:healthcare/screens/health_%20tracker/glucose_tracker_screen.dart';
import 'package:healthcare/screens/health_%20tracker/weight_tracker_screen.dart';
import 'package:healthcare/utilis/const_color.dart';
import 'package:healthcare/widgets/appbar.dart';
import 'package:pie_chart/pie_chart.dart';

class HealthTrackerScreen extends StatefulWidget {
  const HealthTrackerScreen({Key? key}) : super(key: key);

  @override
  State<HealthTrackerScreen> createState() => _HealthTrackerScreenState();
}

class _HealthTrackerScreenState extends State<HealthTrackerScreen> {
  final dataMap = <String, double>{
    "Progress": 80.00,
  };
  final dietMap = <String, double>{
    "Progress": 80.00,
  };
  final bpTracker = <String, double>{
    "Progress": 00.00,
  };
  final glucoseTracker = <String, double>{
    "Progress": 00.00,
  };
  final bodyTemperature = <String, double>{
    "Progress": 00.00,
  };

  final colorList = <Color>[
    Colors.white,
  ];
  //for carousel slider
  final List<String> foodTimeName=[
    'BreakFast',
    'Lunch',
    'Dinner'
  ];
  final List <String>fTime=[
    '8.00 AM',
    '2.00 PM',
    '8.00 PM'
  ];
  int _currentIndex= 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          AppDefaultBar(title: "HEALTH TRACKER", userNAme:" userNAme"),
          const SizedBox(height: 8,),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color:ConstantsColor.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Container(
                       decoration: BoxDecoration(
                         color: const Color(0xff082244),
                         borderRadius: BorderRadius.circular(10)
                       ),
                       height: 125,
                       width: double.maxFinite,
                       child: Center(
                         child:Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text("OVERALL PROGRESS",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 18,
                                     fontWeight: FontWeight.w700
                                   ),),
                                SizedBox(height: 2,),
                                   Text("LAST 7 DAYS",
                                     style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w400
                                     ),)
                                 ],
                               ),
                           PieChart(
                             dataMap: dataMap,
                             chartType: ChartType.ring,
                            chartRadius: 100,
                             ringStrokeWidth: 15,
                             initialAngleInDegree: 80,
                             centerText: "80%",
                             centerTextStyle: const TextStyle(
                               backgroundColor:Color(0xff082244),
                             fontSize: 18
                             ),
                             baseChartColor:const Color(0xff6D90C6) ,
                             colorList: colorList,
                             chartValuesOptions: const ChartValuesOptions(
                               showChartValuesInPercentage: true,
                               showChartValues: false,

                             ),
                             legendOptions: const LegendOptions(
                               showLegends: false
                             ),
                          totalValue: 100,
                           ),

                             ],
                           ),
                         )
                       ),

                      ),
                      const SizedBox(height: 8,),
                      const Text("DIET TRACKER",style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff082244),
                        fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 8,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff082244),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: 100,
                            width: 80,
                            child: Center(
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,

                                        children: [
                                          PieChart(
                                            dataMap: dietMap,
                                            chartType: ChartType.ring,
                                            chartRadius: 45,
                                            ringStrokeWidth: 5,
                                            initialAngleInDegree: 80,
                                            centerText: "80%",
                                            centerTextStyle: const TextStyle(
                                                backgroundColor:Color(0xff082244),
                                                fontSize: 12
                                            ),
                                            baseChartColor:const Color(0xff6D90C6) ,
                                            colorList: colorList,
                                            chartValuesOptions: const ChartValuesOptions(
                                              showChartValuesInPercentage: true,
                                              showChartValues: false,

                                            ),
                                            legendOptions: const LegendOptions(
                                                showLegends: false
                                            ),
                                            totalValue: 100,
                                          ),
                                          const SizedBox(height: 2,),
                                          const Text("7 DAYS",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700
                                            ),)
                                        ],
                                      ),


                                    ],
                                  ),
                                )
                            ),

                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: CarouselSlider(

                              items: foodTimeName.map((e) => Container(
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Image(image: AssetImage(
                                          "assets/health_tracker/Meal.png"
                                        ),
                                        height: 52,
                                        width: 52,),

                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(e.trim().toString(),
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff082244),
                                                  ),
                                                  ),
                                                  Text(fTime[_currentIndex],
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w800,
                                                        color: Color(0xff082244),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const VerticalDivider(),
                                              const Image(image: AssetImage(
                                                  "assets/doctor_image/3dot Icon.png"
                                              ),
                                                height: 22,
                                                width: 22,
                                                color: Colors.black,
                                              ),

                                            ],
                                          ),
                                          Container(
                                            height: 24,
                                            width: 65,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: const Color(0xff4E8C82
                                              ).withOpacity(.30),
                                            ),
                                            child: const Center(
                                              child: Text( "Complete",
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
                                    ),
                                  ],
                                ),
                              ),
                            )).toList(),
                              options:CarouselOptions(
                              height:90,
                                enlargeCenterPage: false,
                                viewportFraction: 0.6,
                                onPageChanged: ((index, other) {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                })

                            ),
                            ),

                          )
                        ],
                      ),
                      const SizedBox(height: 8,),
                      const SizedBox(height: 332,),
                      const Text("MEDICINE TRACKER",style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff082244),
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 8,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff082244),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: 100,
                            width: 80,
                            child: Center(
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,

                                        children: [
                                          PieChart(
                                            dataMap: dietMap,
                                            chartType: ChartType.ring,
                                            chartRadius: 45,
                                            ringStrokeWidth: 5,
                                            initialAngleInDegree: 80,
                                            centerText: "80%",
                                            centerTextStyle: const TextStyle(
                                                backgroundColor:Color(0xff082244),
                                                fontSize: 12
                                            ),
                                            baseChartColor:const Color(0xff6D90C6) ,
                                            colorList: colorList,
                                            chartValuesOptions: const ChartValuesOptions(
                                              showChartValuesInPercentage: true,
                                              showChartValues: false,

                                            ),
                                            legendOptions: const LegendOptions(
                                                showLegends: false
                                            ),
                                            totalValue: 100,
                                          ),
                                          const SizedBox(height: 2,),
                                          const Text("7 DAYS",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                
                                                fontWeight: FontWeight.w700
                                            ),)
                                        ],
                                      ),


                                    ],
                                  ),
                                )
                            ),

                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: CarouselSlider(

                              items: foodTimeName.map((e) => Container(
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Image(image: AssetImage(
                                              "assets/home_screen/Pill.png"
                                          ),
                                            height: 52,
                                            width: 52,),

                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 4),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(e.trim().toString(),
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w600,
                                                        color: Color(0xff082244),
                                                      ),
                                                    ),
                                                    Text(fTime[_currentIndex],
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w800,
                                                        color: Color(0xff082244),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const VerticalDivider(),
                                                const Image(image: AssetImage(
                                                    "assets/doctor_image/3dot Icon.png"
                                                ),
                                                  height: 22,
                                                  width: 22,
                                                  color: Colors.black,
                                                ),

                                              ],
                                            ),
                                            Container(
                                              height: 24,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: const Color(0xff4E8C82
                                                ).withOpacity(.30),
                                              ),
                                              child: const Center(
                                                child: Text( "Complete",
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
                                      ),
                                    ],
                                  ),
                                ),
                              )).toList(),
                              options:CarouselOptions(
                                  height:90,
                                  enlargeCenterPage: false,
                                  viewportFraction: 0.6,
                                  onPageChanged: ((index, other) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  })

                              ),
                            ),

                          )
                        ],
                      ),
                      const SizedBox(height: 8,),
                      const SizedBox(height: 332,),
                      const SizedBox(height: 8,),
                      const Text("BP TRACKER",style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff082244),
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff082244),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: 100,
                            width: 80,
                            child: Center(
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,

                                        children: [
                                          PieChart(
                                            dataMap: bpTracker,
                                            chartType: ChartType.ring,
                                            chartRadius: 45,
                                            ringStrokeWidth: 5,
                                            initialAngleInDegree: 80,
                                            centerText: "00%",
                                            centerTextStyle: const TextStyle(
                                                backgroundColor:Color(0xff082244),
                                                fontSize: 12
                                            ),
                                            baseChartColor:const Color(0xff6D90C6) ,
                                            colorList: colorList,
                                            chartValuesOptions: const ChartValuesOptions(
                                              showChartValuesInPercentage: true,
                                              showChartValues: false,

                                            ),
                                            legendOptions: const LegendOptions(
                                                showLegends: false
                                            ),
                                            totalValue: 100,
                                          ),
                                          const SizedBox(height: 2,),
                                          const Text("7 DAYS",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700
                                            ),)
                                        ],
                                      ),


                                    ],
                                  ),
                                )
                            ),

                          ),
                          const SizedBox(width: 16,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BpTrackerScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height:100,
                              width: 80,
                              child:const Center(
                                child:  Image(image: AssetImage(
                                    "assets/health_tracker/plus-circle.png"
                                ),
                                  height: 52,
                                  width: 52,),
                              ) ,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8,),
                      const SizedBox(height: 332,),
                      const Text("GLUCOSE TRACKER",style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff082244),
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff082244),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: 100,
                            width: 80,
                            child: Center(
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,

                                        children: [
                                          PieChart(
                                            dataMap: glucoseTracker,
                                            chartType: ChartType.ring,
                                            chartRadius: 45,
                                            ringStrokeWidth: 5,
                                            initialAngleInDegree: 80,
                                            centerText: "00%",
                                            centerTextStyle: const TextStyle(
                                                backgroundColor:Color(0xff082244),
                                                fontSize: 12
                                            ),
                                            baseChartColor:const Color(0xff6D90C6) ,
                                            colorList: colorList,
                                            chartValuesOptions: const ChartValuesOptions(
                                              showChartValuesInPercentage: true,
                                              showChartValues: false,

                                            ),
                                            legendOptions: const LegendOptions(
                                                showLegends: false
                                            ),
                                            totalValue: 100,
                                          ),
                                          const SizedBox(height: 2,),
                                          const Text("7 DAYS",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700
                                            ),)
                                        ],
                                      ),


                                    ],
                                  ),
                                )
                            ),

                          ),
                          const SizedBox(width: 16,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const GlucoseTrackerScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height:100,
                              width: 80,
                              child:const Center(
                                child:  Image(image: AssetImage(
                                    "assets/health_tracker/plus-circle.png"
                                ),
                                  height: 52,
                                  width: 52,),
                              ) ,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8,),
                      const SizedBox(height: 332,),
                      const Text("BODY TEMPERATURE",style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff082244),
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff082244),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: 100,
                            width: 80,
                            child: Center(
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,

                                        children: [
                                          PieChart(
                                            dataMap: bodyTemperature,
                                            chartType: ChartType.ring,
                                            chartRadius: 45,
                                            ringStrokeWidth: 5,
                                            initialAngleInDegree: 80,
                                            centerText: "00%",
                                            centerTextStyle: const TextStyle(
                                                backgroundColor:Color(0xff082244),
                                                fontSize: 12
                                            ),
                                            baseChartColor:const Color(0xff6D90C6) ,
                                            colorList: colorList,
                                            chartValuesOptions: const ChartValuesOptions(
                                              showChartValuesInPercentage: true,
                                              showChartValues: false,

                                            ),
                                            legendOptions: const LegendOptions(
                                                showLegends: false
                                            ),
                                            totalValue: 100,
                                          ),
                                          const SizedBox(height: 2,),
                                          const Text("7 DAYS",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700
                                            ),)
                                        ],
                                      ),


                                    ],
                                  ),
                                )
                            ),

                          ),
                          const SizedBox(width: 16,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BodyTemparatureScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height:100,
                              width: 80,
                              child:const Center(
                                child:  Image(image: AssetImage(
                                    "assets/health_tracker/plus-circle.png"
                                ),
                                  height: 52,
                                  width: 52,),
                              ) ,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8,),
                      const SizedBox(height: 332,),
                      const Text("WEIGHT TRACKER",style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff082244),
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff082244),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: 100,
                            width: 80,
                            child: Center(
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,

                                        children: [
                                          PieChart(
                                            dataMap: bodyTemperature,
                                            chartType: ChartType.ring,
                                            chartRadius: 45,
                                            ringStrokeWidth: 5,
                                            initialAngleInDegree: 80,
                                            centerText: "00%",
                                            centerTextStyle: const TextStyle(
                                                backgroundColor:Color(0xff082244),
                                                fontSize: 12
                                            ),
                                            baseChartColor:const Color(0xff6D90C6) ,
                                            colorList: colorList,
                                            chartValuesOptions: const ChartValuesOptions(
                                              showChartValuesInPercentage: true,
                                              showChartValues: false,

                                            ),
                                            legendOptions: const LegendOptions(
                                                showLegends: false
                                            ),
                                            totalValue: 100,
                                          ),
                                          const SizedBox(height: 2,),
                                          const Text("7 DAYS",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700
                                            ),)
                                        ],
                                      ),


                                    ],
                                  ),
                                )
                            ),

                          ),
                          const SizedBox(width: 16,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const WeightTrackerScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              height:100,
                              width: 80,
                              child:const Center(
                                child:  Image(image: AssetImage(
                                    "assets/health_tracker/plus-circle.png"
                                ),
                                  height: 52,
                                  width: 52,),
                              ) ,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8,),
                      const SizedBox(height: 332,),


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
