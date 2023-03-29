import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_profile/constants/constants.dart';

import '../controller/settings_controller.dart';

class Settings extends StatelessWidget {
 Settings({Key? key}) : super(key: key);
 final SettingsController ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,leading:InkWell(onTap:(){Navigator.pop(context);},child: const Icon(Icons.navigate_before,size: 40,),),
        backgroundColor: kPrimaryColor,
          centerTitle:true,title: Obx(() => Text('Settings',style: TextStyle(fontSize: ctrl.titleFontSize.toDouble()),),)),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [Card(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
            height:40,
            child: Row(children: [
              const Text('Title text font size'), const SizedBox(width: 20,),InkWell(onTap:ctrl.titleTextIncrement,child: const Icon(Icons.add_circle),),const SizedBox(width: 8,),InkWell(onTap: ctrl.titleTextDecrement,child: const Icon(Icons.remove_circle),)],),
          ),
        ),
          Card(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              height:40,
              child: Row(children: [
                const Text('Body text font size'), const SizedBox(width: 16,),InkWell(onTap:ctrl.bodyTextIncrement,child: const Icon(Icons.add_circle),),const SizedBox(width: 8,),InkWell(onTap: ctrl.bodyTextDecrement,child: const Icon(Icons.remove_circle),)],),
            ),
          ),
          Card(
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 40,
              child: Row(
                children: [
                  const Text('Dark'),

                  Obx(() => Switch(
                    thumbColor: MaterialStateProperty.all(kSecondaryColor),
                      onChanged: (value) => ctrl.changeValue(),
                      value: ctrl.light.value),
                  ),
                  const Text('Light'),

                ],
              ),
            ),
          )
        ],),
      )
    );
  }
}
