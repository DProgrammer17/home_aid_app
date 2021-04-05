import 'package:flutter/material.dart';
import 'package:home_aid_design/src/Utils/scaffold.dart';

class ApplianceScreen extends StatelessWidget {
  static const String id = 'appliances_screen.dart';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Container(
      color: Colors.blue,
    ));
  }
}

class ApplianceContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
