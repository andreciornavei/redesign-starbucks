import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:starbucks/utils/app_colors.dart';

class Stars extends StatelessWidget {
  final int rate;

  Stars(this.rate);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        this.rate,
        (index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: Icon(
            FontAwesome.star,
            size: 14,
            color: AppColors.green,
          ),
        ),
      ),
    );
  }
}
