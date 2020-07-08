import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/models/product.model.dart';

class ListItem extends StatelessWidget {
  
  final String index;
  final ProductModel product;

  ListItem(this.index, this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed("/products/$index", arguments: this.product),
      child: Container(
        width: Get.width,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: "product_image_$index",
                child: Container(
                  constraints: BoxConstraints(maxWidth: Get.width/2),
                  child: Image.asset(this.product.asset.value)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
