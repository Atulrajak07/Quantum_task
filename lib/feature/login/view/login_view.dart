import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_quantum/core/Gobal/custombutton.dart';
import 'package:task_quantum/core/routes.dart';
import 'package:task_quantum/feature/login/controller/login_controller.dart';


class LoginView extends GetView<LoginController>{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Get.focusScope!.unfocus(),
    child:  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Social X',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700
          ),
        ),
      ),

      body: Center(
        child: Column(
        children: [
          const Text('Sign In Into your account',
            style: TextStyle(
             color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.w800
            ),
          ),

          const SizedBox(height: 40,),

          Card(
            elevation: 40,
            shadowColor: Colors.black,
            child: SizedBox(
              width: 300,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                     TextFormField(
                       decoration: const InputDecoration(
                          labelText: 'Email',
                          suffixIcon: Icon(Icons.email_outlined),
                       ),
                     ),

                    const SizedBox(height: 10),

                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.lock_open),
                      ),
                    ),

                    const SizedBox(height: 5),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        InkWell(
                          // onTap: () => Get.toNamed(Routes.forgot),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30,),

                    Text(
                      " Login With  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: Get.height*0.02
                      ),
                    ),

                     const SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:   [
                        InkWell(
                           onTap: ()=> controller.googleSignup() ,
                          child:   CircleAvatar(
                            radius:30 ,
                            backgroundColor: Colors.white30,
                            child: Image.asset("images/google.png", width: 40,),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          // onTap: () => controller.GoogleSign(),

                          child:  CircleAvatar(
                            radius:30 ,
                            backgroundColor: Colors.white30,
                            child: Image.asset("images/fb.png", width: 40,),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20,),

                     Row(
                       children: [
                         Text(
                           "Don't have an Account ?",
                           style: TextStyle(
                               fontWeight: FontWeight.w500,
                               fontSize: Get.height*0.02
                           ),
                         ),


                         InkWell(
                           onTap: (){
                             Get.toNamed(Routes.sign);
                           },
                           child: Text("Register Now",
                             style: TextStyle(
                               letterSpacing: 1,
                               color: Colors.red,
                                 fontWeight: FontWeight.w600,
                                 fontSize: Get.height*0.02
                             ),
                           ),
                           ),
                       ],
                     ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 60,),
          Padding(padding:   const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomButton(title: 'LOGIN', onPress: (){
             Get.toNamed(Routes.home);
            }),
          )
        ], //Card
      ),
      ), //Center
    ),
    );
  }
}