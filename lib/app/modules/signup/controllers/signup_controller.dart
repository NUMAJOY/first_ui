import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' show FormState, GlobalKey, TextEditingController;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:login/app/routes/app_pages.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  final GlobalKey<FormState>form_loginkey_controller=GlobalKey<FormState>();
  late TextEditingController txt_emailcontroller,txt_passwordcontroller;
  var email='';
  var pass='';
  @override
  void onInit() {
    super.onInit();
    txt_emailcontroller=TextEditingController();
    txt_passwordcontroller=TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    txt_emailcontroller.dispose();
    txt_passwordcontroller.dispose();
  }
  

   dynamic  button_login() {
    final isvalid=form_loginkey_controller.currentState!.validate();
    
    if(!isvalid){
      print('--');
      return;
    }
    else{
      
      //register();
      registration();
      //Get.toNamed(Routes.HOME);
    }


  }
void registration()async {
   
   await FirebaseAuth.instance.createUserWithEmailAndPassword(email:txt_emailcontroller.text, password: txt_passwordcontroller.text).then((value) => Get.toNamed(Routes.HOME));
}
  

  String? validateemail(String s) {
    if(!(s.isEmail || s.isPhoneNumber) ){
      print('00');
    return('provide valid email or phonenumber');

    }
    else{
    return null;
  }
  }

  String? validatepassword(String s) {
    print('999');
    if(s.length<6){
      
      return ('enter atleast 6 charaters');
    }
    else{
    return null;
    }
  }
 // void register(){
 // var storage=GetStorage();
//var email=storage.write('username', txt_emailcontroller.text);
  //var pass=storage.write('password', txt_passwordcontroller.text);

 // }
}
