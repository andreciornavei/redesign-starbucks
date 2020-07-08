import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:starbucks/utils/app_colors.dart';

class Header extends StatelessWidget {
  final bool canBack;

  Header({this.canBack = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 65,
        padding: EdgeInsets.zero,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                "STARBUCKS",
                style: TextStyle(
                  fontSize: 21,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Visibility(
              visible: canBack,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 42,
                  height: 42,
                  child: IconButton(
                    icon: Icon(
                      Feather.chevron_left,
                      size: 21,
                      color: AppColors.white,
                    ),
                    onPressed: () => Get.back(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
