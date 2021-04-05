import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_aid_design/src/UI/appliances_screen.dart';
import 'package:home_aid_design/src/UI/home_screen.dart';
import 'package:home_aid_design/src/UI/login_screen.dart';
import 'package:home_aid_design/src/UI/registration_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash_screen.dart';

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      home: ApplianceScreen(),
      duration: 5000,
      imageSize: 250,
      imageSrc: 'images/home_aid_logo.png',
      text: 'HOME AID',
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      backgroundColor: Colors.white,
    );
  }
}
