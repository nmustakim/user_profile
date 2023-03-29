import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_profile/constants/constants.dart';

import '../controller/settings_controller.dart';

class Profile extends StatelessWidget {
  final SettingsController ctrl = Get.find();
  final String name,userName,email,age,birthDate;
 Profile({super.key, required this.name, required this.userName, required this.email,  required this.age, required this.birthDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true,automaticallyImplyLeading:false,title:  Text('Profile'  ,style: TextStyle(fontSize: ctrl.titleFontSize.toDouble(),
      )),backgroundColor:  kPrimaryColor,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(() => Column(
          children: [
            const SizedBox(height: 20,),
            const Center(child:CircleAvatar(radius: 50,foregroundImage: AssetImage('assets/images/profile.png'),) ,),
            const SizedBox(height: 8,),
            Center(child: Text(userName,overflow:TextOverflow.ellipsis,)),
            const SizedBox(height: 25,),
            Card(child: ListTile(title: Text('Name',overflow:TextOverflow.ellipsis,style: TextStyle(color: kSecondaryColor,fontSize: ctrl.bodyFontSize.toDouble(),fontWeight: FontWeight.bold,),),subtitle: Text(name,style:  TextStyle(fontSize: ctrl.bodyFontSize.toDouble(),color: Colors.black),))),
            Card(child: ListTile(title: Text('Email',style: TextStyle(color:kSecondaryColor,fontSize: ctrl.bodyFontSize.toDouble(),fontWeight: FontWeight.bold,),),subtitle: Text(email,style: TextStyle(fontSize: ctrl.bodyFontSize.toDouble(),color: Colors.black),))),
            Card(child: ListTile(title: Text('Age',style: TextStyle(color: kSecondaryColor,fontSize: ctrl.bodyFontSize.toDouble(),fontWeight: FontWeight.bold,),),subtitle: Text(age,style:  TextStyle(fontSize: ctrl.bodyFontSize.toDouble(),color: Colors.black),))),
            Card(child: ListTile(title: Text('Birth date',style: TextStyle(color: kSecondaryColor,fontSize: ctrl.bodyFontSize.toDouble(),fontWeight: FontWeight.bold,),),subtitle: Text(birthDate,style:  TextStyle(fontSize: ctrl.bodyFontSize.toDouble(),color: Colors.black),)))
          ],
        ),)
      ),
    );
  }
}
