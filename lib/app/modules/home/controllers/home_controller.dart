import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:login/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final GlobalKey<FormState> form_loginkey_controller1 = GlobalKey<FormState>();
  late TextEditingController txt_emailcontroller, txt_passwordcontroller;
  var ispasswordhidden = true.obs;

  @override
  void onInit() {
    super.onInit();
    txt_emailcontroller = TextEditingController();
    txt_passwordcontroller = TextEditingController();
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

  dynamic button_login() {
    final isvalid = form_loginkey_controller1.currentState!.validate();
    // var storage=GetStorage();
    //var email=storage.read('username');
    // var pass=storage.read('password');
    if (!isvalid) {
      print('--');
      return;
    }
    //if(txt_emailcontroller.text==email && txt_passwordcontroller.text==pass && isvalid==true){
    //  Get.toNamed(Routes.LOGINPAGE);
    // }
    else {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: txt_emailcontroller.text,
              password: txt_passwordcontroller.text)
          .then((value) => Get.toNamed(Routes.LOGINPAGE));
    }
  }

  String? validateemail(String s) {
    if (!(s.isEmail || s.isPhoneNumber)) {
      print('00');
      return ('provide valid email or phonenumber');
    } else {
      return null;
    }
  }

  String? validatepassword(String s) {
    print('999');
    if (s.length < 6) {
      return ('enter atleast 6 charaters');
    } else {
      return null;
    }
  }
}
