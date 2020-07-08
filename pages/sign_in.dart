import 'package:flutter/material.dart';
import 'package:ui_demo/orange_button.dart';
import 'package:ui_demo/pages/sign_up.dart';
import 'package:ui_demo/widgets/app_passwordfield.dart';
import 'package:ui_demo/widgets/app_symbol.dart';
import 'package:ui_demo/widgets/app_textfield.dart';
import 'package:ui_demo/widgets/background.dart';
import 'package:ui_demo/widgets/on_taptext.dart';

class SignInPage extends StatelessWidget {
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
               OnTapText(
                title: 'Forget Password?',
                onPress: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (BuildContext context) => SignUpPage(),),);
                },
              ),
              OrangeButton(
                titleText: 'SIGN IN',
                onPressText: () {},
              ),
             
              OnTapText(
                title: 'Don\'t have ah account? Sign Up',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => SignUpPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
