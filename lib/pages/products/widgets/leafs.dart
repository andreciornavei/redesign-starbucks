import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/pages/products/controller.dart';
import 'package:starbucks/utils/calcs.dart';

class Leafs extends StatelessWidget {
  final ProductsController controller = Get.find();
  final double topDistance = Get.height * 0.25;
  final double scaledLeafHeight = Get.height * 0.75;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        top: topDistance,
        left: Calcs.calcHorizontalParallaxPosition(
          backgroundOriginalHeight: 439,
          backgroundOriginalWidth: 999,
          backgroundRenderHeight: scaledLeafHeight,
          screenWidth: Get.width,
          foregroundTotalSteps: controller.products.value.length,
          foregroundStepIndex: controller.selectedIndex.value,
          offsetPadding: Get.width / 2,
        ),
        duration: Duration(milliseconds: 200),
        child: Hero(
          tag: "leafs",
          child: Image.asset(
            "assets/images/illustrations/leafs.png",
            height: scaledLeafHeight,
          ),
        ),
      ),
    );
  }
}
