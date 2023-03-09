import 'package:get/get.dart';

import 'package:login/app/modules/forgotpage/bindings/forgotpage_binding.dart';
import 'package:login/app/modules/forgotpage/views/forgotpage_view.dart';
import 'package:login/app/modules/home/bindings/home_binding.dart';
import 'package:login/app/modules/home/views/home_view.dart';
import 'package:login/app/modules/loginpage/bindings/loginpage_binding.dart';
import 'package:login/app/modules/loginpage/views/loginpage_view.dart';
import 'package:login/app/modules/signup/bindings/signup_binding.dart';
import 'package:login/app/modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGINPAGE,
      page: () => LoginpageView(),
      binding: LoginpageBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPAGE,
      page: () => ForgotpageView(),
      binding: ForgotpageBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
  ];
}
