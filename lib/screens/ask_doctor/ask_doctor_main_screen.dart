import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utilis/const_color.dart';
import '../../utilis/mixins.dart';

class AskDoctorMainScreen extends StatefulWidget {
  const AskDoctorMainScreen({Key? key}) : super(key: key);

  @override
  State<AskDoctorMainScreen> createState() => _AskDoctorMainScreenState();
}

class _AskDoctorMainScreenState extends State<AskDoctorMainScreen> {
  String? search = '';
  final TextEditingController _searchController = TextEditingController();
  final List<String> askdoctorImages = [
    'assets/doctor_image/Profile photo.png',
    'assets/doctor_image/Profile photo_1.png'
  ];
  final List<String> doctorName = [
    "Dr. Hafsa JH",
    "Dr. Anisuzzaman",
  ];
  final List<String> healthTipsText = [
    "Domestic method of Covid 19 \n New variant...",
    "Loreim Ipsum text varaible\n New variant...",
  ];
  final List<String> healthTipsDate = [
    "10 Jun 2023",
    "20 Jul 2023",
  ];
  final List<String> healthTipsLove = [
    "10k",
    "20k",
  ];
  final List<String> healthTipsComment = [
    "5k",
    "3k",
  ];
  final List<String> healthTipsReply = [
    "8k",
    "12k",
  ];

  int _currentIndex = 0;
//for carousel
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Image(
                  image: AssetImage("assets/home_screen/Multiply.png"),
                  height: 116,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Most Trendy topics!",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ConstantsColor.greyColor),
              ),
              Expanded(
                child: CarouselSlider(
                  items: askdoctorImages
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              //width: 280,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),

                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      child: ClipOval(
                                        child: Image(
                                          image: AssetImage(
                                              askdoctorImages[_currentIndex]),
                                          height: 52,
                                          width: 52,
                                        ),
                                      ),
                                    ),
                                    const VerticalDivider(
                                      color: Colors.transparent,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              doctorName[_currentIndex],
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color:
                                                    ConstantsColor.primaryColor,
                                              ),
                                            ),
                                            const VerticalDivider(
                                              color: Colors.transparent,
                                            ),
                                            const VerticalDivider(
                                              color: Colors.transparent,
                                            ),
                                            Text(
                                              healthTipsDate[_currentIndex],
                                              style: const TextStyle(
                                                fontSize: 14,
                                                // fontWeight: FontWeight.w600,
                                                color: ConstantsColor.greyColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              healthTipsText[_currentIndex],
                                              style: const TextStyle(
                                                fontSize: 14,
                                                //fontWeight: FontWeight.w600,
                                                color:
                                                    ConstantsColor.primaryColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      "assets/health_tracker/heart.png"),
                                                  height: 24,
                                                  width: 24,
                                                  color: ConstantsColor
                                                      .primaryColor,
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  healthTipsLove[_currentIndex],
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                      color: ConstantsColor
                                                          .greyColor),
                                                ),
                                              ],
                                            ),
                                            const VerticalDivider(),
                                            const VerticalDivider(),
                                            Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      "assets/health_tracker/message-square.png"),
                                                  height: 24,
                                                  width: 24,
                                                  color: ConstantsColor
                                                      .primaryColor,
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  healthTipsComment[
                                                      _currentIndex],
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                      color: ConstantsColor
                                                          .greyColor),
                                                ),
                                              ],
                                            ),
                                            const VerticalDivider(),
                                            const VerticalDivider(),
                                            Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      "assets/health_tips/corner-up-right.png"),
                                                  height: 16,
                                                  width: 16,
                                                  color: ConstantsColor
                                                      .primaryColor,
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  healthTipsReply[
                                                      _currentIndex],
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                      color: ConstantsColor
                                                          .greyColor),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                      height: 102,
                      enlargeCenterPage: false,
                      viewportFraction: 0.9,
                      aspectRatio: 18 / 8,
                      onPageChanged: ((index, other) {
                        setState(() {
                          _currentIndex = index;
                        });
                      })),
                ),
              ),
              const Text(
                "Most Popular topics!",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ConstantsColor.greyColor),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: Mixins().healthTipsAskdoctor.length,
                  itemBuilder: (context, int index) {
                    return Card(
                        color: ConstantsColor.backgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                child: ClipOval(
                                  child: Image(
                                    image: AssetImage(
                                      "${Mixins().healthTipsAskdoctor.elementAt(index)["images"]}",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const VerticalDivider(),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "${Mixins().healthTips.elementAt(index)["doctor name"]}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: ConstantsColor.primaryColor),
                                      ),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
                                      Text(
                                        "${Mixins().healthTips.elementAt(index)["date"]}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: ConstantsColor.greyColor),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "${Mixins().healthTipsAskdoctor.elementAt(index)["title"]}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${Mixins().healthTipsAskdoctor.elementAt(index)["text"]}",
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        textDirection: TextDirection.ltr,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            //  fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                "assets/health_tracker/heart.png"),
                                            height: 24,
                                            width: 24,
                                            color: ConstantsColor.primaryColor,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "${Mixins().healthTipsAskdoctor.elementAt(index)["love"]}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color:
                                                    ConstantsColor.greyColor),
                                          ),
                                        ],
                                      ),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
                                      Row(
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                "assets/health_tracker/message-square.png"),
                                            height: 24,
                                            width: 24,
                                            color: ConstantsColor.primaryColor,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "${Mixins().healthTipsAskdoctor.elementAt(index)["comment"]}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color:
                                                    ConstantsColor.greyColor),
                                          ),
                                        ],
                                      ),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
                                      const VerticalDivider(),
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
                                            "${Mixins().healthTipsAskdoctor.elementAt(index)["view"]}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color:
                                                    ConstantsColor.greyColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _searchController,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffE8EFFA),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10),
                              labelText: '       Ask for health tips ',
                              hintText: '        Ask for health tips',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontStyle: FontStyle.normal),
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontStyle: FontStyle.normal),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ConstantsColor.primaryColor))),
                        ),
                      ),
                      const VerticalDivider(),
                      const Icon(
                        Icons.camera_alt_outlined,
                        color: ConstantsColor.primaryColor,
                        size: 24,
                      ),
                      const VerticalDivider(),
                      const Icon(
                        Icons.image_outlined,
                        color: ConstantsColor.primaryColor,
                        size: 24,
                      ),
                      const VerticalDivider(),
                      const Icon(
                        Icons.keyboard_voice_rounded,
                        color: ConstantsColor.primaryColor,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
