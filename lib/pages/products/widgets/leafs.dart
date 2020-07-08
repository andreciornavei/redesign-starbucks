import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/pages/products/controller.dart';

class Leafs extends StatelessWidget {
  final ProductsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        top: Get.height / 4,
        left: (Get.width / controller.products.value.length) * controller.selectedIndex.value * -1,
        duration: Duration(milliseconds: 200),
        child: Hero(
          tag: "leafs",
          child: Image.asset(
            "assets/images/illustrations/leafs.png",
            height: 512,
          ),
        ),
      ),
    );
  }
}
