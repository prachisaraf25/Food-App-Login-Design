import 'package:flutter/material.dart';
import 'package:ui_demo/styles/app_colors.dart';

class OnTapText extends StatelessWidget {
  final String title;
  final Function onPress;

  OnTapText({this.title,this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(title, style: TextStyle(color: AppColors.whiteColor)),
      onTap: onPress,
    );
  }
}
