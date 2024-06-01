import 'package:get/get.dart';

class Authcontroller extends GetxController{
  RxBool isLoginPasswordvisible=false.obs;
  RxBool isCreatePassvisible=false.obs;
  RxBool isConfirmPassvisible=false.obs;


  void displayCratepassword(){
    isCreatePassvisible.value=!isCreatePassvisible.value;
  }
   void displayConfirmpassword(){
    isConfirmPassvisible.value=!isConfirmPassvisible.value; 
  }

  void displaypassword(){
    isLoginPasswordvisible.value=!isLoginPasswordvisible.value;
  }
}