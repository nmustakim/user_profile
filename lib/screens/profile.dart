import 'package:flutter/material.dart';
import 'package:user_profile/constants/constants.dart';

class Profile extends StatelessWidget {
  final String name,userName,email,age,birthDate;
  const Profile({super.key, required this.name, required this.userName, required this.email, required this.age, required this.birthDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true,title: const Text('Profile'),backgroundColor:  defaultbackgroundColor,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            const Center(child:CircleAvatar(radius: 50,foregroundImage: AssetImage('assets/images/profile.png'),) ,),
            const SizedBox(height: 8,),
            Center(child: Text(userName)),
            SizedBox(height: 25,),
            Card(child: ListTile(title:Text('Name',style: TextStyle(color: Color(0XFF351A96)),),subtitle: Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),))),
            Card(child: ListTile(title:Text('Email',style: TextStyle(color: Color(0XFF351A96)),),subtitle: Text(email,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),))),
            Card(child: ListTile(title:Text('Age',style: TextStyle(color: Color(0XFF351A96)),),subtitle: Text(age,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),))),
            Card(child: ListTile(title:Text('Birth date',style: TextStyle(color: Color(0XFF351A96)),),subtitle: Text(birthDate,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)))
          ],
        ),
      ),
    );
  }
}
