import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_profile/constants/constants.dart';

import '../controller/settings_controller.dart';

class Notifications extends StatelessWidget {
  final SettingsController ctrl = Get.find();
 Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(automaticallyImplyLeading:false,title: Text('Notifications',style: TextStyle(fontSize:ctrl.titleFontSize.toDouble()),),centerTitle: true,backgroundColor: kPrimaryColor),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 20,),
            Text('Today',style: TextStyle(fontWeight: FontWeight.bold,fontSize: ctrl.titleFontSize.toDouble()),),
            const SizedBox(height: 15,),
            ListTile(leading:const CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: const Text('Nice man liked your post'),subtitle:Text('How to communicate effect...',style: TextStyle(fontSize: ctrl.bodyFontSize.toDouble()),),trailing:const Icon(Icons.thumb_up,color: Colors.indigo,)
            ),
            const SizedBox(height: 7,),
            ListTile(leading:const CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: const Text('ABC commented on your post'),subtitle:Text('How to communicate effect...',style: TextStyle(fontSize: ctrl.bodyFontSize.toDouble()),),trailing:const Icon(Icons.comment,color: Colors.indigo,)
            ),
            const SizedBox(height: 7,),
            ListTile(leading:const CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: const Text('XYZ shared your post'),subtitle:Text('Health awareness for an IT professional...',style: TextStyle(fontSize: ctrl.bodyFontSize.toDouble()),),trailing:const Icon(Icons.share,color: Colors.indigo,)
            ),
            const SizedBox(height: 20,),
            Text('Yesterday',style: TextStyle(fontWeight: FontWeight.bold,fontSize:ctrl.titleFontSize.toDouble()),),
            const SizedBox(height: 15,),
            const ListTile(leading:CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: Text('Asdfg messaged you'),subtitle:Text('When will you arri...'),trailing:Icon(Icons.message,color: Colors.indigo,)
            ),
            const SizedBox(height: 7,),
            ListTile(leading:const CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: const Text('Mr human liked your post'),subtitle:Text('Health awareness for an IT professional...',style: TextStyle(fontSize: ctrl.bodyFontSize.toDouble()),),trailing:const Icon(Icons.thumb_up,color: Colors.indigo,)
            ),


          ],),)
      ),
    );
  }
}
