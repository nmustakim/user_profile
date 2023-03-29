import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_profile/constants/constants.dart';
import 'package:user_profile/screens/settings.dart';
import '../controller/settings_controller.dart';
class Home extends StatelessWidget{
  final SettingsController controller = Get.find();
 final String name,userName,email,age,birthDate;
 Home({super.key, required this.name, required this.userName, required this.email,required this.age, required this.birthDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: kPrimaryColor,centerTitle:true,title: Obx(() => Text('Home',style: TextStyle(fontSize: controller.titleFontSize.toDouble()),),)),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:  const BoxDecoration(
                color: kPrimaryColor
              ),
              child: Center(child: Obx(() => Text(userName,style:  TextStyle(color: Colors.white,fontSize:controller.titleFontSize.toDouble()),)),
              ),
            ),

            ListTile(
              title: const Text('Settings'),
              trailing: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
              },
            ),

          ],
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text('Welcome',style: TextStyle(fontSize:20)),
          Center(child: Text(name,overflow:TextOverflow.ellipsis,style: const TextStyle(fontSize:60,fontWeight: FontWeight.bold),))
        ],),
      )

    );}
}
