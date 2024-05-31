import 'package:get/get.dart';

class Passcontroller extends GetxController{
  var isPasswordvisible=false.obs;


  void displaypassword(){
    isPasswordvisible.value=!isPasswordvisible.value;
  }
}