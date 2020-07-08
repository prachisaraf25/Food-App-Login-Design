import 'package:flutter/material.dart';
import 'package:ui_demo/styles/app_colors.dart';

class AppSymbol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.only(top: 80),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.restaurant,
                  color: AppColors.primaryColor,
                  size: 80,
                ),
                Text('Foods Corner',style: TextStyle(
                  fontSize: 50,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cookie',
                  shadows: [BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                  )]
                ))
              ],
            )));
  }
}
