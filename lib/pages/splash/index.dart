import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/utils/app_colors.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: AppColors.white,
        child: GestureDetector(
          onTap: () => Get.toNamed("/products"),
          child: Hero(
            tag: "logo", 
            child: Image.asset(
              "assets/images/illustrations/logo.png",
              width: 128,
              height: 128,
            ),
          ),
        ),
      ),
    );
  }
}
