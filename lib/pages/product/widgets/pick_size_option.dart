import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:starbucks/utils/app_colors.dart';
import 'package:get/get.dart';
import '../controller.dart';

class PickSizeOption extends StatelessWidget {

  final ProductController controller = Get.find();
  final int size;
  final double iconSize;

  PickSizeOption(this.size, this.iconSize);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: 32,
        height: 32,
        child: IconButton(
          padding: EdgeInsets.all(0),
          alignment: Alignment.bottomCenter,
          icon: Icon(
            Ionicons.md_cafe,
            size: this.iconSize,
            color: size == controller.size.value ? AppColors.starbucksGreen : AppColors.gray,
          ),
          onPressed: () => controller.setSize(size),
        ),
      ),
    );
  }
}
