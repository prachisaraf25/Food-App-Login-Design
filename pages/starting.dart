import 'package:flutter/material.dart';
import 'package:ui_demo/orange_button.dart';
import 'package:ui_demo/pages/sign_in.dart';
import 'package:ui_demo/pages/sign_up.dart';
import 'package:ui_demo/widgets/app_symbol.dart';
import 'package:ui_demo/widgets/background.dart';
import 'package:ui_demo/widgets/on_taptext.dart';
import 'package:ui_demo/widgets/white_botton.dart';

class StartingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Background(),
        AppSymbol(),
        Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                OrangeButton(
                  titleText: 'SIGN IN',
                  onPressText: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SignInPage(),
                      ),
                    );
                  },
                ),
                WhiteButton(
                    titleText: 'SIGN UP',
                    onPressText: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => SignUpPage(),
                        ),
                      );
                    }),
                OnTapText(
                  title: 'Need Help?',
                ),
                SizedBox(
                  height: 20,
                )
              ],
            )),
      ]),
    );
  }
}
