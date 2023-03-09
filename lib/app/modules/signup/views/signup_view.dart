import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return (Form(key:controller.form_loginkey_controller,child:Stack(children: [Positioned(
              top: 250.0,left: 350.0,
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
                            child: TextFormField(
                                controller: controller.txt_passwordcontroller,
                                validator: (value) {
                                  return controller.validatepassword(value!);
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Password',
                                    ),
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w100,
                                    decoration: TextDecoration.none))),
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
            top: 400.0,left:350.0,
            child: SizedBox(
                width: 290.0,
                height: 32.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent),
                    child: Text(
                      'SignUp',
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
          ),])));
  }
}
