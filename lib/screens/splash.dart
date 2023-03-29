import 'package:flutter/material.dart';
import 'package:user_profile/constants/constants.dart';
import 'package:user_profile/screens/onboarding.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    toHome();
  }

  void toHome() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) =>  const Onboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: kPrimaryColor,),

          Container(height: 420,width: MediaQuery.of(context).size.width,decoration: const BoxDecoration(color:Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250))),)
          ,
          Container(height:250,width:350,padding:const EdgeInsets.only(left: 56,top: 180),child: const Text('UsersBook',style: TextStyle(color:kSecondaryColor,fontSize: 60,fontWeight: FontWeight.bold),)),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Icon(Icons.circle_outlined),Icon(Icons.circle),Icon(Icons.circle),Icon(Icons.circle_outlined),],),
          )
        ],
      ),
    );
  }
}