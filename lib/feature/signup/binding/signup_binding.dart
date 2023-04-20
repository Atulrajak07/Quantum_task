import 'package:get/get.dart';
import 'package:task_quantum/feature/signup/controller/signup_controller.dart';

class SignupBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SignupController());
  }

}