import 'package:firebase_core/firebase_core.dart' show Firebase, FirebaseOptions;
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:FirebaseOptions(apiKey:'AIzaSyBr_aVvJ57TMDYXZS-LYON1KAmcpsyKso8', appId:'1:4861753498:android:5027e564ee004e9a4c8723', messagingSenderId:'4861753498 ', projectId: 'fir-1-1b1d5'));

  
  runApp(
    GetMaterialApp(debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
