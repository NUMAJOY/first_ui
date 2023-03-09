import 'package:get/get.dart';

import '../controllers/forgotpage_controller.dart';

class ForgotpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotpageController>(
      () => ForgotpageController(),
    );
  }
}
