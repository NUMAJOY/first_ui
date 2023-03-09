import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login/app/routes/app_pages.dart';

import '../controllers/forgotpage_controller.dart';

class ForgotpageView extends GetView<ForgotpageController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 150.0,
            left: 300.0,
            child: Text(
              'RESET PASSWORD',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            )),
        Positioned(
            left: 300.0,
            top: 200.0,
            child: Material(
                child: Container(
              decoration: BoxDecoration(border: Border.all()),
              width: 400.0,
              child: TextFormField(controller: controller.txt_emailcontroller,
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ))),
        Positioned(
            top: 280.0,
            left: 420.0,
            child: ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.sendPasswordResetEmail(email:controller.txt_emailcontroller.text).then((value) => Get.toNamed(Routes.HOME));
              },
              child: Text('RESET PASSWORD'),
            ))
      ],
    );
  }
}
