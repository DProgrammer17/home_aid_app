import 'package:flutter/material.dart';
import 'package:home_aid_design/src/Utils/scaffold.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = 'settings.dart';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Container(
      color: Colors.green,
    ));
  }
}

class SettingsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.yellow,
      ),
    );
  }
}
