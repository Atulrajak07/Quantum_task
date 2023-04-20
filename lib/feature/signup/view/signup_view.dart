import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:task_quantum/core/Gobal/custombutton.dart';
import 'package:task_quantum/core/routes.dart';
import '../controller/signup_controller.dart';

class SignupView extends GetView<SignupController>{
  const SignupView({super.key});

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
          const SizedBox(height: 10,),

        const Text('Sign In Into your account',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),

        const SizedBox(height: 40,),
         Card(
          elevation: 40,
          shadowColor: Colors.black,
          child: SizedBox(
            width: 300,
            height: 450,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      suffixIcon: Icon(Icons.person,color: Colors.red,),
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.email_outlined,color: Colors.red,),
                    ),
                  ),

                  const SizedBox(height: 10),

                  IntlPhoneField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      suffixIcon: Icon(Icons.phone,color: Colors.red,),
                    ),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print('Country changed to: ' + country.name);
                    },
                  ),

                  const SizedBox(height: 5),

                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.lock_open,color: Colors.red,),
                    ),
                  ),

                  const SizedBox(height: 5),

             Row(
                        children: [
                            Checkbox(value: controller.ischecked, onChanged:(val){
                                controller.ischecked = val!;
                            }),
                          
                          const Text("I agree with"),

                          const SizedBox(width: 5,),

                          const Text("term & condition", style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600
                          ),)

                        ],
                      ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Text(
                        "Already have an Account ?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Get.height*0.02
                        ),
                      ),


                      InkWell(
                        onTap: (){
                          Get.toNamed(Routes.login);
                        },
                        child: Text("Sign IN!",
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

            const SizedBox(height: 50,),
            Padding(padding:   const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomButton(title: 'REGISTER', onPress: (){

              }),
            )
  ],


        ),
      ),

     ),
    );
    }

  }