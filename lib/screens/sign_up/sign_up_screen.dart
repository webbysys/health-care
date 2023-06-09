import 'package:flutter/material.dart';
import 'package:healthcare/screens/sign_in_screen.dart';
import 'package:healthcare/screens/sign_up/sign_up_otp.dart';
import 'package:healthcare/screens/user_screens/main_board_check.dart';
import 'package:healthcare/utilis/const_color.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _mobileEmailController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  String userName = '';
  String userMobileNumber = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children:  [
              const Padding(
                padding: EdgeInsets.only(top: 180,left: 113,right: 113),
                child: Text("Sign up",
                style: TextStyle(
                  color: ConstantsColor.primaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w700
                ),
                ),
              ),
              const SizedBox(height: 22,),
              const Padding(
                padding: EdgeInsets.only(left:16,right: 16),
                child: Text(
          "By signing up you are agree to our terms & Conditions.please provide you accurate information to create new account",
               textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              const SizedBox(height: 32,),
             Form(
                 key: _formkey,
                 child: Padding(
                   padding: const EdgeInsets.only(left: 22,right: 22),
                   child: Column(
                     children: [
                       TextFormField(
                         controller: _nameController,
                         keyboardType: TextInputType.text,

                         decoration: const InputDecoration(

                           suffixIcon:Icon(Icons.person_2_outlined),
                           labelText: 'Enter Your  Name',
                           hintText: 'Enter Your Name',
                           border: OutlineInputBorder(),
                           hintStyle: TextStyle(
                               color: Colors.grey,
                               fontStyle: FontStyle.normal),
                           labelStyle: TextStyle(
                               color: Colors.grey,
                               fontStyle: FontStyle.normal),
                         ),

                       ),
                       const SizedBox(height: 8,),
                       TextFormField(
                         controller: _mobileEmailController,
                         keyboardType: TextInputType.text,

                         decoration: const InputDecoration(

                           suffixIcon:Icon(Icons.phone),
                           labelText: 'Enter your phone number ',
                           hintText: 'Enter your phone number ',
                           border: OutlineInputBorder(),
                           hintStyle: TextStyle(
                               color: Colors.grey,
                               fontStyle: FontStyle.normal),
                           labelStyle: TextStyle(
                               color: Colors.grey,
                               fontStyle: FontStyle.normal),
                         ),

                       ),
                       const SizedBox(height: 8,),

                     ],

                   ),
                 )),
              const SizedBox(height: 32,),
              Padding(
                padding: const EdgeInsets.only(left: 22,right: 22),
                child: Center(
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 52,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpOtp()));
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: ConstantsColor.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("OR",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
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
              const SizedBox(height: 8,),

            ],
          ),
        ),
      ),
    );
  }
}
