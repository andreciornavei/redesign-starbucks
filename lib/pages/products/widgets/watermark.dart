import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/utils/app_colors.dart';

class Watermark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "background_container",
      child: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: AppColors.starbucksGreen,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: -100,
              top: -100,
              right: -100,
              bottom: -100,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.03), BlendMode.dstATop),
                    image: AssetImage("assets/images/illustrations/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
