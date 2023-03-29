import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_profile/screens/splash.dart';

import 'controller/settings_controller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
MyApp({super.key});
  final controller = Get.put(SettingsController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Obx(() => MaterialApp(
      theme: controller.light.value == true ? ThemeData.light():ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    ));
  }
}
