import 'package:flutter/material.dart';
import 'package:starbucks/utils/app_colors.dart';

class PickQuantityButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  PickQuantityButton(this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      height: 35,
      child: RawMaterialButton(
        onPressed: this.onPressed,
        fillColor: AppColors.warmNeutral,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Icon(
          this.icon,
          size: 21,
          color: AppColors.green,
        ),
      ),
    );
  }
}
