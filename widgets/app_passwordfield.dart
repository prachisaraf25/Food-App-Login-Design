import 'package:flutter/material.dart';
import 'package:ui_demo/styles/app_colors.dart';

class AppPasswordField extends StatelessWidget {
  final String text;

  AppPasswordField({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 64),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            fillColor: Colors.white70,
            filled: true,
            prefixIcon: Icon(
              Icons.lock,
              color: AppColors.primaryColor,
            ),
            hintText: text,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 1,
                )),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 1,
                ))),
      ),
    );
  }
}
