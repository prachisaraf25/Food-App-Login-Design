import 'package:flutter/material.dart';
import 'package:ui_demo/orange_button.dart';
import 'package:ui_demo/pages/sign_in.dart';
import 'package:ui_demo/widgets/app_passwordfield.dart';
import 'package:ui_demo/widgets/app_symbol.dart';
import 'package:ui_demo/widgets/app_textfield.dart';
import 'package:ui_demo/widgets/background.dart';
import 'package:ui_demo/widgets/on_taptext.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Background(),
        AppSymbol(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppTextField(),
              AppPasswordField(
                text: 'Password',
              ),
              AppPasswordField(
                text: 'Confirm Password',
              ),
              OrangeButton(
                titleText: 'SIGN IN',
                onPressText: () {},
              ),
              OnTapText(
                title: 'Already have an account? Sign In',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => SignInPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    ));
  }
}
