import 'package:flutter/material.dart';
import 'package:healthcare/screens/sign_in_screen.dart';
import 'package:healthcare/screens/sign_up/sign_up_screen.dart';
import 'package:healthcare/utilis/const_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomescreenCheck extends StatefulWidget {
  const WelcomescreenCheck({Key? key}) : super(key: key);

  @override
  State<WelcomescreenCheck> createState() => _WelcomescreenCheckState();
}

class _WelcomescreenCheckState extends State<WelcomescreenCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Positioned(
           right: -10,
            top: -10,
            child: Image(
              image: AssetImage("assets/home_screen/ellipse_1.png"),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: -10,
            top: -12,
            child: SvgPicture.asset("assets/welcome_screen/Ellipse 2.svg",
            fit: BoxFit.cover,
              color: ConstantsColor.primaryColor,
            ),
          ),
          Positioned(
            right: 00,
            top: 50,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("WELCOME",

                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      ),
                      SizedBox(width: 5,),
                      Text("TO",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const Text("VIRTUAL HEALTHCARE SERVICE",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ),
          const Positioned(
            right: 00,
            top: 105,
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text("CURE WAYS",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            )
          ),

          const Positioned(
            left: 45,
            top: 95,
            child: Image(
              image: AssetImage("assets/home_screen/Logo.png"),
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            left: 88,
            top: 275,
            child: Image(
              image: AssetImage("assets/home_screen/Ellipse 17.png"),
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            left:95,
            top: 285,
            child: Image(
              image: AssetImage("assets/home_screen/Ellipse 16.png"),
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            left: 95,
            top: 240,
            child: Image(
              image: AssetImage("assets/welcome_screen/welcome_doctor.png"),
              height: 267,
              width:224 ,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            left: 100,
            top: 275,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 25,
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/welcome_screen/welcome_drop_of_blood.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 260,
            top: 275,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 25,
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/welcome_screen/welcome_microscope.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 75,
            top: 340,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 25,
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/welcome_screen/welcome_pill.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 295,
            top: 340,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 25,
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/welcome_screen/welcome_ask_doctor.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 75,
            top: 410,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 25,
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/welcome_screen/welcome_pharma.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 290,
            top: 415,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 25,
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/welcome_screen/welcome_planner.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

         /* const Positioned(
            left: 105,
            top: 160,
            child: Image(
              image: AssetImage("assets/welcome_screen/Illustration.png"),
              fit: BoxFit.cover,
            ),
          ),*/
          Positioned(
            left: 00,
            right: 00,
            top:535,
            child:  Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: SizedBox(
                    height:52,
                    width:double.maxFinite,
                   child:  OutlinedButton(
                     onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                     },
                     style: OutlinedButton.styleFrom(
                       backgroundColor: ConstantsColor.primaryColor,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5),
                       ),
                     ),
                     child: const Text(
                       'Sign Up with Email ',
                       style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700),
                     ),
                   ),
                  ),
                ),
                const SizedBox(height: 8,),
                const Text("Or continue With",
                style: TextStyle(
                  fontSize:14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8F8F8F)
                ),),
                const SizedBox(height: 4,),
                Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.maxFinite,
                          height: 56,
                          child: OutlinedButton(
                            onPressed: () {

                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(width: 1.0, color: ConstantsColor.primaryColor),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),

                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Image(image: AssetImage("assets/welcome_screen/Google.png")),

                                 Text(
                                  'Google',
                                  style: TextStyle(
                                      color:  ConstantsColor.primaryColor, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const VerticalDivider(width: 25,),
                      Expanded(
                        child: SizedBox(
                          width: double.maxFinite,
                          height: 56,
                          child: OutlinedButton(
                            onPressed: () {

                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(width: 1.0, color: ConstantsColor.primaryColor),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),

                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Image(image: AssetImage("assets/welcome_screen/Facebook.png")),

                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color:  ConstantsColor.primaryColor, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
                const SizedBox(height: 8,),
                const Text("OR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff8F8F8F)
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already Have an Account?" ,

                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: -1,
                          fontSize: 14,
                          color: Color(0xff8F8F8F)
                      ),
                    ),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignInScreen()));
                    }, child: const Text(
                      "Sign In" ,
                      textAlign: TextAlign.center,
                      style: TextStyle(

                          height: -1,
                          fontSize: 14,
                          color: ConstantsColor.primaryColor
                      ),
                    ),)

                  ],
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
