import 'package:flutter/material.dart';
import 'package:home_aid_design/src/UI/add_device.dart';
import 'package:home_aid_design/src/UI/appliances_screen.dart';
import 'package:home_aid_design/src/UI/appliances_screen2.dart';
import 'package:home_aid_design/src/UI/home_screen.dart';
import 'package:home_aid_design/src/UI/login_screen.dart';
import 'package:home_aid_design/src/UI/registration_screen.dart';
import 'package:home_aid_design/src/UI/settings.dart';
import 'package:home_aid_design/src/UI/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Aid Design',
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ApplianceScreen.id: (context) => ApplianceScreen(),
        ApplianceScreen2.id: (context) => ApplianceScreen2(),
        AddDeviceScreen.id: (context) => AddDeviceScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
      },
    );
  }
}
//TODO: Start here.
//Refactor buttons
//Add bottom nav to the second appliances screen and the add device screen
//Yeah i'm sure you can figure everything out, if you need anything call me.
