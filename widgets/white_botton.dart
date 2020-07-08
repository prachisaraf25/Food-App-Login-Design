import 'package:flutter/material.dart';
import 'package:ui_demo/styles/app_colors.dart';

class WhiteButton extends StatelessWidget {
  final String titleText;
  final Function onPressText;

  WhiteButton({this.titleText, this.onPressText});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
            child: MaterialButton(
              minWidth: double.infinity,
              padding: EdgeInsets.all(16),
              child: Text(titleText,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                  )),
              onPressed:onPressText,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: AppColors.whiteColor,
            )),
      );
  }
}