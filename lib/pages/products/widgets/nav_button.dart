import 'package:flutter/material.dart';
import 'package:starbucks/utils/app_colors.dart';

class NavButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  NavButton(this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon, color: AppColors.white, size: 32,),
      padding: EdgeInsets.all(10),
      shape: CircleBorder(),
    );
  }
}
