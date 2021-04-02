import 'package:flutter/material.dart';
import 'HomeAIDDesign/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Aid Design',
      home: SplashScreen(),
    );
  }
}
