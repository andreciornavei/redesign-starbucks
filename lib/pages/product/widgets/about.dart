import 'package:flutter/material.dart';
import 'package:starbucks/models/product.model.dart';
import 'package:starbucks/pages/product/widgets/pick_quantity.dart';
import 'package:starbucks/pages/product/widgets/pick_size.dart';
import 'package:starbucks/utils/app_colors.dart';
import 'package:starbucks/widgets/starts.dart';

class AboutProduct extends StatelessWidget {
  final ProductModel product;

  AboutProduct(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        top: 10,
        right: 25,
        bottom: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.product.name.value,
            style: TextStyle(
              color: AppColors.gray,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            this.product.flavor.value,
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 46,
            ),
          ),
          SizedBox(height: 15),
          Stars(this.product.rate.value),
          SizedBox(height: 15),
          Text(
            this.product.description.value,
            style: TextStyle(
              color: AppColors.darkGray,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              PickSize(),
              PickQuantity(),
            ],
          ),
        ],
      ),
    );
  }
}
