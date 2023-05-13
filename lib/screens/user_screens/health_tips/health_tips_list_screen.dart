import 'package:flutter/material.dart';
import 'package:healthcare/screens/user_screens/health_tips/health_tips_details.dart';

import '../../../utilis/const_color.dart';
import '../../../utilis/mixins.dart';
class HealthtipsListScreen extends StatefulWidget {
  const HealthtipsListScreen({Key? key}) : super(key: key);

  @override
  State<HealthtipsListScreen> createState() => _HealthtipsListScreenState();
}

class _HealthtipsListScreenState extends State<HealthtipsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantsColor.backgroundColor,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount:Mixins().healthTips.length,
                itemBuilder: (context,int index){
                  return Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child:  GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HealthTipsDetailsScreen()));
                        },
                        child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 66,
                                    width: 66,
                                    decoration:BoxDecoration(
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Image(image: AssetImage(
                                      "${Mixins().healthTips.elementAt(index)["images"]}",
                                    ),

                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const VerticalDivider(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text( "${Mixins().healthTips.elementAt(index)["doctor name"]}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,

                                            color: ConstantsColor.primaryColor
                                        ),
                                      ),
                                      const SizedBox(height: 4,),
                                      Text( "${Mixins().healthTips.elementAt(index)["title"]}",
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: ConstantsColor.primaryColor
                                        ),
                                      ),
                                      const SizedBox(height: 16,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text( "${Mixins().healthTips.elementAt(index)["date"]}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,

                                                color: ConstantsColor.greyColor
                                            ),
                                          ),
                                          const VerticalDivider(),
                                          const VerticalDivider(),
                                          const VerticalDivider(),
                                          const VerticalDivider(),
                                          const VerticalDivider(),
                                          const VerticalDivider(),
                                          Row(
                                            children: [
                                             const Image(image: AssetImage(
                                               "assets/health_tips/corner-up-right.png"
                                             ),
                                               height: 16,
                                               width: 16,
                                               color: ConstantsColor.primaryColor,
                                             ),
                                               const SizedBox(width: 4,),
                                              Text( "${Mixins().healthTips.elementAt(index)["view"]}",
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,

                                                    color: ConstantsColor.greyColor
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )

                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
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
