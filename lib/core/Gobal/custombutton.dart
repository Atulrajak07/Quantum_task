import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView {
  final String title;
  final VoidCallback onPress;
  const CustomButton({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: MaterialButton(
        onPressed: onPress,
        color: Colors.red,
        shape: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontWeight: FontWeight.w800,
                fontSize: Get.height * 0.03,
                ),
          ),
        ),
      ),
    );
  }
}