import 'package:flutter/material.dart';
import 'package:starbucks/pages/product/widgets/pick_size_option.dart';
import 'package:starbucks/utils/app_colors.dart';

class PickSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Tamanho",
          style: TextStyle(
            color: AppColors.gray,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            PickSizeOption(1, 18),
            SizedBox(width: 5),
            PickSizeOption(2, 24),
            SizedBox(width: 5),
            PickSizeOption(3, 30),
          ],
        ),
      ],
    );
  }
}
