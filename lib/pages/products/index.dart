import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/pages/products/controller.dart';
import 'package:starbucks/pages/products/widgets/list.dart';
import 'package:starbucks/utils/app_colors.dart';
import 'package:starbucks/widgets/header.dart';

import 'widgets/fade.dart';
import 'widgets/item_title.dart';
import 'widgets/leafs.dart';
import 'widgets/watermark.dart';
class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(
      init: ProductsController(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.starbucksGreen,
        body: Stack(
          children: <Widget>[
            Watermark(),
            Leafs(),
            Container(
              alignment: Alignment.center,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Hero(
                      tag: "header",
                      child: Header(),
                    ),
                    SizedBox(height: 40),
                    ItemTitle(
                      controller
                          .products[controller.selectedIndex.value].name.value,
                      controller
                          .products[controller.selectedIndex.value].rate.value,
                    ),
                    Expanded(child: ListProducts()),
                  ],
                ),
              ),
            ),
            Fade(),
          ],
        ),
      ),
    );
  }
}
