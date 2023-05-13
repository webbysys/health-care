import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthcare/utilis/const_color.dart';

class HealthTipsDetailsScreen extends StatefulWidget {
  const HealthTipsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<HealthTipsDetailsScreen> createState() =>
      _HealthTipsDetailsScreenState();
}

class _HealthTipsDetailsScreenState extends State<HealthTipsDetailsScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 16,
              ),
              SizedBox(
                width: 124,
                height: 48,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: ConstantsColor.backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: ConstantsColor.primaryColor,
                      ),
                      Text(
                        'Go Back',
                        style: TextStyle(
                            color: ConstantsColor.primaryColor, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: ConstantsColor.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Image(
                        image: AssetImage("assets/health_tips/Rectangle 15.png"),
                        height: 170,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Domestic method of Covid 19 New variant...',
                      style: TextStyle(
                          color: ConstantsColor.primaryColor,
                          fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.transparent,
                          child: Center(
                            child: ClipOval(
                              child: Image(
                                image: AssetImage(
                                  "assets/doctor_image/Profile photo.png"
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                        ),
                        const SizedBox(width: 8,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Dr. Hafsa JH',
                              style: TextStyle(
                                  color: ConstantsColor.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          SizedBox(
                              height: 2,
                            ),
                            Text(
                              '10 Jun 2023',
                              style: TextStyle(
                                  color: ConstantsColor.greyColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16,),
                    const Text(
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable sourceLorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable',
                      style: TextStyle(
                          color: ConstantsColor.primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
