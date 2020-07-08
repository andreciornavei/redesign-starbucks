import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/pages/products/controller.dart';
import 'package:starbucks/utils/app_colors.dart';

class Fade extends StatelessWidget {
  final ProductsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: controller.finished.value == false,
        child: Positioned(
          left: -100,
          top: -100,
          right: -100,
          bottom: -100,
          child: AnimatedOpacity(
            opacity: controller.visible.value ? 1.0 : 0.0,
            duration: Duration(milliseconds: 500),
            onEnd: () => controller.setFinished(true),
            child: Hero(
              tag: "logo",
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.starbucksGreen,
                  image: DecorationImage(
                    image: AssetImage("assets/images/illustrations/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
