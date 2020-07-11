import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/utils/app_colors.dart';
import 'package:starbucks/widgets/starts.dart';

import '../controller.dart';

class ItemTitle extends StatelessWidget {
  final ProductsController controller = Get.find();
  
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedOpacity(
        opacity: controller.visibleTitle.value ? 1.0 : 0.0,
        duration: Duration(milliseconds: 250),
        onEnd: controller.updateTitleProduct,
        child: Column(
          children: <Widget>[
            Stars(this.controller.titleRate.value),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: Text(
                this.controller.titleName.value,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 42,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  height: 0.98,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
