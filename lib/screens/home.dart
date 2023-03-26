import 'package:flutter/material.dart';
import 'package:user_profile/constants/constants.dart';
import 'package:user_profile/screens/profile.dart';

import 'notifications.dart';
class Home extends StatelessWidget{
 final String name,userName,email,age,birthDate;

const Home({super.key, required this.name, required this.userName, required this.email,required this.age, required this.birthDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: kPrimaryColor,centerTitle:true,title: Text('Home',style: kAppbarTextStyle,),),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:  BoxDecoration(
                color: kPrimaryColor
              ),
              child: Center(child: Text(userName,style: const TextStyle(color: Colors.white,fontSize: 24),)),
            ),
            ListTile(
              title: const Text('Profile'),
              trailing: const Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile(name: name, userName: userName, email: email,age: age,birthDate: birthDate,)));
              },
            ),
            ListTile(
              title: const Text('Settings'),
              trailing: const Icon(Icons.settings),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Notifications'),
              trailing: const Icon(Icons.notifications),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Notifications()));
              },
            ),
          ],
        ),
      ),
      body: Container(padding:const EdgeInsets.all(16),child: Text('Assalamu Alaikum,\n$name',style: const TextStyle(fontSize:30,fontWeight: FontWeight.bold),)),
    );
  }
}
