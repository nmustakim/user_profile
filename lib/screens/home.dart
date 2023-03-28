import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_profile/constants/constants.dart';
import 'package:user_profile/screens/profile.dart';
import 'package:user_profile/screens/settings.dart';
import '../controller/settings_controller.dart';
import 'notifications.dart';
class Home extends StatelessWidget{
  final controller = Get.put(SettingsController());
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
      body: Container(padding:const EdgeInsets.all(16),child: Text('Assalamu Alaikum,\n$name',style: const TextStyle(fontSize:30,fontWeight: FontWeight.bold),)),
    );
  }
}
