import 'package:flutter/material.dart';

import '../../../utilis/const_color.dart';
import '../../../utilis/mixins.dart';
import '../../../widgets/appbar.dart';

class BloodBankListScreen extends StatefulWidget {
  const BloodBankListScreen({Key? key}) : super(key: key);

  @override
  State<BloodBankListScreen> createState() => _BloodBankListScreenState();
}

class _BloodBankListScreenState extends State<BloodBankListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantsColor.backgroundColor,
        child: Column(
          children: [
            AppDefaultBar(title: "BLOOD BANK", userNAme: "User"),
            const SizedBox(height: 8,),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: Mixins().bloodBankDetails.length,
                  itemBuilder: (context,int index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8),
                    child: Card(
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
                                "${Mixins().bloodBankDetails.elementAt(index)["images"]}",
                              ),

                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text( "${Mixins().bloodBankDetails.elementAt(index)["name"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,

                                      color: ConstantsColor.primaryColor
                                  ),
                                ),
                                const SizedBox(height: 4,),
                                Text( "${Mixins().bloodBankDetails.elementAt(index)["address"]}",
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
                                    child: Text( "Online",
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
                                const Image(
                                  image: AssetImage("assets/doctor_image/3dot Icon.png"),
                                  color: Color(0xff8F8F8F),
                                  height: 24,
                                  width: 24,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 12,),
                                Container(
                                  height: 32,
                                  width: 109,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: ConstantsColor.primaryColor
                                  ),
                                  child: const Center(
                                    child: Text( "Contact",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.white,
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
                  }),
            )
          ],
        ),
      ),
    );
  }
}
/*child: Card(
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Row(

children: [
Container(
height: 76,
width: 76,
decoration:BoxDecoration(
borderRadius: BorderRadius.circular(5)
),
child: Image(image: AssetImage(
"${Mixins().bloodBankDetails.elementAt(index)["images"]}",
),

fit: BoxFit.cover,
),
),
VerticalDivider(),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text( "${Mixins().bloodBankDetails.elementAt(index)["name"]}",
style: TextStyle(
fontWeight: FontWeight.w700,
fontSize: 18,

color: ConstantsColor.primaryColor
),
),
SizedBox(width: 110,),
Container(
child: Image(
image: AssetImage("assets/doctor_image/3dot Icon.png"),
color: Color(0xff8F8F8F),
height: 24,
width: 24,
fit: BoxFit.cover,
),
)
],
),
Text( "${Mixins().bloodBankDetails.elementAt(index)["address"]}",
textAlign: TextAlign.start,
style: TextStyle(
fontWeight: FontWeight.w400,
fontSize: 16,

color: Color(0xff8F8F8F),
),
),
SizedBox(height: 8,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
Container(
height: 24,
width: 65,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(5),
color: Color(0xff4E8C82
).withOpacity(.30),
),
child: Center(
child: Text( "Online",
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
Container(
height: 32,
width: 109,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(5),
color: ConstantsColor.primaryColor
),
child: Center(
child: Text( "Contact",
textAlign: TextAlign.start,
style: TextStyle(
fontWeight: FontWeight.w600,
fontSize: 14,
color: Colors.white,
),
),
),
),
],
)
],
)
],
),
),
),*/
