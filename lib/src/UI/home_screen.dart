import 'package:flutter/material.dart';
import 'package:home_aid_design/src/Utils/scaffold.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen.dart';

  @override
  Widget build(BuildContext context) {
    return HomeContents();
  }
}

class HomeContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
