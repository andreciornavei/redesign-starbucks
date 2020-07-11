import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/models/product.model.dart';
import 'package:starbucks/pages/product/controller.dart';
import 'package:starbucks/pages/product/widgets/about.dart';
import 'package:starbucks/utils/app_colors.dart';
import 'package:starbucks/widgets/cart.dart';
import 'package:starbucks/widgets/header.dart';

class Product extends StatelessWidget {
  final String index = Get.parameters['index'];
  final ProductModel product = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.starbucksGreen,
        body: SafeArea(
          child: Container(
            color: AppColors.white,
            height: Get.height,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Hero(
                        tag: "background_container",
                        child: Container(
                          width: Get.width,
                          height: Get.width - 50,
                          decoration: BoxDecoration(
                            color: AppColors.starbucksGreen,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(30, 25),
                              bottomRight: Radius.elliptical(30, 25),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        right: 25,
                        left: 25,
                        child: Hero(
                          tag: "leafs",
                          child: Image.asset(
                            "assets/images/illustrations/leafs.png",                          
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Hero(
                            tag: "header",
                            child: Header(canBack: true),
                          ),
                          Container(
                            height: Get.width - 50,
                            alignment: Alignment.center,
                            child: Hero(
                              tag: "product_image_$index",
                              child: Image.asset(this.product.asset.value),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  AboutProduct(this.product),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Obx(
          () => Cart(
            this.product.amount.value,
            controller.quantity.value,
          ),
        ),
      ),
    );
  }
}
