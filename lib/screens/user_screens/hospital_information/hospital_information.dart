import 'package:flutter/material.dart';
import 'package:healthcare/utilis/const_color.dart';
import 'package:healthcare/widgets/appbar.dart';

class HospitalInformation extends StatefulWidget {
  const HospitalInformation({Key? key}) : super(key: key);

  @override
  State<HospitalInformation> createState() => _HospitalInformationState();
}

class _HospitalInformationState extends State<HospitalInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppDefaultBar(title: "HOSPITAL INFORMATION", userNAme: "userNAme"),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 228,
                      width: double.maxFinite,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: const Image(
                        image: AssetImage(
                          "assets/home_screen/Hospital Image.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "CURE WAYS",
                      style: TextStyle(
                          color: ConstantsColor.primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "ABOUT",
                      style: TextStyle(
                          color: ConstantsColor.greyColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"
                          " laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderitLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"
                          " laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderitLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"
                          " laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit",
                      style: TextStyle(
                          color: ConstantsColor.greyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 32,),
                    SizedBox(
                      width: double.maxFinite,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: ConstantsColor.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          'CALL NOW',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32,),
                    SizedBox(
                      width: double.maxFinite,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: ConstantsColor.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          'E-MAIL',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32,),
                    const Text(
                      "ADDRESS",
                      style: TextStyle(
                          color: ConstantsColor.greyColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 32,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Image(image: AssetImage(
                        "assets/home_screen/Map.png"
                      ),
                      height: 228,
                        width: double.maxFinite,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(height: 32,),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
