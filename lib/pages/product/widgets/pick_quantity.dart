import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:starbucks/pages/product/controller.dart';
import 'package:starbucks/pages/product/widgets/pick_quantity_button.dart';
import 'package:starbucks/utils/app_colors.dart';

class PickQuantity extends StatelessWidget {
  final ProductController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          "Quantidade",
          style: TextStyle(
            color: AppColors.gray,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            PickQuantityButton(Feather.minus, controller.decrementQuantity),
            SizedBox(width: 10),
            SizedBox(
              width: 35,
              height: 35,
              child: Align(
                alignment: Alignment.center,
                child: Obx(
                  () => Text(
                    controller.quantity.value.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.starbucksGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            PickQuantityButton(Feather.plus, controller.incrementQuantity),
          ],
        ),
      ],
    );
  }
}
