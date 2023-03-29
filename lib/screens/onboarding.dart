import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile/constants/constants.dart';
import 'package:user_profile/screens/signup.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Container(height:  MediaQuery.of(context).size.height/2,width: MediaQuery.of(context).size.width,decoration: const BoxDecoration(color:Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200))),),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text(
                'Let\'s get start',
                style: TextStyle(
                    fontFamily: GoogleFonts.manrope().fontFamily,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF000000)),
              ),
              Text(
                'Please sign up to explore all the features',
                style: TextStyle(
                    fontFamily: GoogleFonts.manrope().fontFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF999EA1)),
              ),
            const SizedBox(height: 250,),
            Center(child: SizedBox(height:45,width:300,child: ElevatedButton(style:ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),backgroundColor: kSecondaryColor),onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpForm())), child: const Text('Sign Up',style: TextStyle(fontSize: 20),))))
        ],),
          ),
      ]
      ),
    );
  }
}
