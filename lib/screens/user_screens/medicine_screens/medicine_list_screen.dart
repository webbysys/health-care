import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthcare/screens/user_screens/medicine_screens/medicine_details_screen.dart';

import '../../../utilis/const_color.dart';
import '../../../utilis/mixins.dart';

class MedicineListScreen extends StatefulWidget {
  const MedicineListScreen({Key? key}) : super(key: key);

  @override
  State<MedicineListScreen> createState() => _MedicineListScreenState();
}

class _MedicineListScreenState extends State<MedicineListScreen> {
  String? search = '';
  final TextEditingController _searchController = TextEditingController();
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: Mixins().medicineList.length,
              itemBuilder: (context, int index) {
                return Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (index) => const MedicineDetailsScreen()));
                      },
                      child: Card(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 76,
                              width: 76,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Image(
                                image: AssetImage(
                                  "${Mixins().medicineList.elementAt(index)["images"]}",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${Mixins().medicineList.elementAt(index)["name"]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: ConstantsColor.primaryColor),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "${Mixins().medicineList.elementAt(index)["group"]}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: ConstantsColor.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "${Mixins().medicineList.elementAt(index)["generic"]}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: ConstantsColor.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "${Mixins().medicineList.elementAt(index)["company"]}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: ConstantsColor.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Image(
                                  image: AssetImage(
                                      "assets/doctor_image/3dot Icon.png"),
                                  color: Color(0xff8F8F8F),
                                  height: 24,
                                  width: 24,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  children: [
                                    const Image(
                                      image: AssetImage(
                                          "assets/health_tips/corner-up-right.png"),
                                      height: 16,
                                      width: 16,
                                      color: ConstantsColor.primaryColor,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "${Mixins().medicineList.elementAt(index)["view"]}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: ConstantsColor.greyColor),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
