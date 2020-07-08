import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:starbucks/models/product.model.dart';
import 'package:starbucks/pages/products/controller.dart';
import 'package:starbucks/pages/products/widgets/item.dart';
import 'package:starbucks/pages/products/widgets/nav_button.dart';

class ListProducts extends StatelessWidget {
  final ProductsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: Get.height,
            viewportFraction: 0.9,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            onPageChanged: (int index, _) => controller.setSelectedIndex(index),
          ),
          carouselController: controller.carouselController,
          items: controller.products.map((ProductModel product) {
            return Builder(
              builder: (BuildContext context) {
                return ListItem(controller.products.value.indexOf(product).toString(), product);
              },
            );
          }).toList(),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                NavButton(
                  Feather.chevron_left,
                  controller.carouselController.previousPage,
                ),
                NavButton(
                  Feather.chevron_right,
                  controller.carouselController.nextPage,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
