import 'package:get/get.dart';

class SettingsController extends GetxController{
var light = true.obs;
var titleFontSize = 18.obs;
var bodyFontSize = 15.obs;
void titleTextIncrement() {

if(titleFontSize<30){
  titleFontSize++;
}
else{
  titleFontSize = titleFontSize;
}
  update();
}
void titleTextDecrement() {
  if(titleFontSize > 18){
    titleFontSize--;
  }
  else{
    titleFontSize = titleFontSize;
  }
  update();
}
void bodyTextIncrement() {

  if(bodyFontSize<20){
    bodyFontSize++;
  }
  else{
    null;
  }
  update();
}
void bodyTextDecrement() {
  if(bodyFontSize > 15){
    bodyFontSize--;
  }
  else{
    null;
  }
  update();
}


  void changeValue() => light.value = light.value ? false : true;






}