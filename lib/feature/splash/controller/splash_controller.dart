import 'dart:async';
import 'package:get/get.dart';
import 'package:task_quantum/core/routes.dart';


class SplashController extends GetxController{
  @override
  void onInit() {
    Timer(
      const Duration(seconds: 3),
          () => Get.offAllNamed(Routes.login),
    );
    super.onInit();
  }
}