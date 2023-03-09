import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.form_loginkey_controller1,
        child: Stack(alignment: AlignmentDirectional.topCenter, children: [
          Image.asset(
            'images/background.png',
            width: 500.0,
            height: 400.0,
          ),
          Positioned(
            right: 375.0,
            top: 50.0,
            child: Image.asset('images/clock.png'),
          ),
          Positioned(
              right: 575.0,
              top: 0.0,
              child: Image.asset(
                'images/light1.png',
                height: 175.0,
              )),
          Positioned(
              right: 475.0,
              top: 0.0,
              child: Image.asset(
                'images/light2.png',
                height: 125.0,
              )),
          Positioned(
              top: 175.0,
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.none),
              )),
          Positioned(
              top: 380.0,
              child: Container(
                  width: 290.0,
                  child: Column(
                    children: [
                      Container(
                        width: 300.0,
                        child: Material(
                            child: TextFormField(
                                controller: controller.txt_emailcontroller,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Email or phone Number'),
                                validator: (value) {
                                  return controller.validateemail(value!);
                                },
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w100,
                                    decoration: TextDecoration.none))),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey.shade200))),
                      ),
                      Container(
                        width: 300.0,
                        child: Material(
                            child:Obx(() => TextFormField(
                                obscureText: controller.ispasswordhidden.value,
                                controller: controller.txt_passwordcontroller,
                                validator: (value) {
                                  return controller.validatepassword(value!);
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Password',
                                    suffix: InkWell(
                                      child: Icon(
                                        Icons.visibility,
                                        color: Colors.grey,
                                        size: 20.0,
                                      ),
                                      onTap: () {controller.ispasswordhidden.value=!controller.ispasswordhidden.value;},
                                    )),
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w100,
                                    decoration: TextDecoration.none)))),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey.shade100))),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]))),
          Positioned(
            top: 568.0,
            child: SizedBox(
                width: 270.0,
                height: 32.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      controller.button_login();
                    })),
          ),
          Positioned(
              top: 597.0,
              child:Row(children:[TextButton(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.deepPurpleAccent,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.FORGOTPAGE);
                  }),TextButton(onPressed:(){Get.toNamed(Routes.SIGNUP);}, child: Text('SignUp', style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.deepPurpleAccent,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400)))])
        )]));
  }
}
