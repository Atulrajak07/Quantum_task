import 'package:get/get.dart';
import 'package:task_quantum/core/routes.dart';
import 'package:task_quantum/feature/home/binding/home_binding.dart';
import 'package:task_quantum/feature/home/view/home_view.dart';
import 'package:task_quantum/feature/login/binding/login_binding.dart';
import 'package:task_quantum/feature/login/view/login_view.dart';
import 'package:task_quantum/feature/signup/binding/signup_binding.dart';
import 'package:task_quantum/feature/signup/view/signup_view.dart';
import 'package:task_quantum/feature/splash/binding/splash_binding.dart';
import 'package:task_quantum/feature/splash/view/splash_view.dart';


List<GetPage> allpages = [

  GetPage(
    name: Routes.login,
    page: ()=> const LoginView(),
    binding: LoginBinding(),
  ),

  GetPage(
    name: Routes.sign,
    page: ()=> const SignupView(),
    binding: SignupBinding(),
  ),

  GetPage(
      name: Routes.splash,
      page: ()=> const SplashView(),
      binding: SplashBinding(),
   ),

  GetPage(
    name: Routes.home,
    page: ()=> const HomeView(),
    binding: HomeBinding(),
  ),


];