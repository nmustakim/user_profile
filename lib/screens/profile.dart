import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile/constants/constants.dart';

class Profile extends StatelessWidget {
  final String name,userName,email,age,birthDate;
  const Profile({super.key, required this.name, required this.userName, required this.email,  required this.age, required this.birthDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true,title:  Text('Profile',    style: kAppbarTextStyle,
      ),backgroundColor:  kPrimaryColor,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Center(child:CircleAvatar(radius: 50,foregroundImage: AssetImage('assets/images/profile.png'),) ,),
            const SizedBox(height: 8,),
            Center(child: Text(userName)),
            const SizedBox(height: 25,),
            Card(child: ListTile(title:const Text('Name',style: TextStyle(color: Color(0XFF351A96)),),subtitle: Text(name,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),))),
            Card(child: ListTile(title:const Text('Email',style: TextStyle(color: Color(0XFF351A96)),),subtitle: Text(email,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),))),
            Card(child: ListTile(title:const Text('Age',style: TextStyle(color: Color(0XFF351A96)),),subtitle: Text(age,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),))),
            Card(child: ListTile(title:const Text('Birth date',style: TextStyle(color: Color(0XFF351A96)),),subtitle: Text(birthDate,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)))
          ],
        ),
      ),
    );
  }
}
