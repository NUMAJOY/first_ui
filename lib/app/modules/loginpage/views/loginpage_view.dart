import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login/app/routes/app_pages.dart';

import '../controllers/loginpage_controller.dart';

class LoginpageView extends GetView<LoginpageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ElevatedButton(
         onPressed: (){FirebaseAuth.instance.signOut().then((value) => Get.toNamed(Routes.HOME));},child: Text('LogOut'),
        ),
      ),
    );
  }
}
