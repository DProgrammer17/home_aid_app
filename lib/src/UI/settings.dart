import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = 'settings.dart';

  @override
  Widget build(BuildContext context) {
    return SettingsContent();
  }
}

class SettingsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('images/settings_illustration.png'),
          alignment: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'SETTINGS',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Name: Timothy Henshaw'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Phone: 0901-345-9980'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Address: Road Z, Unit A2 Nikon Estate, Rassberry Cove, Bella Russe Plataue, Ohio'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Email: timothyhenry@gmail.com'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 0.0, left: 8.0),
              child: Text(
                'Edit Personal Info',
                style: TextStyle(color: Colors.blue, fontSize: 16.0),
              ),
            ),
            SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, bottom: 8.0, right: 250.0),
                child: Divider(
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Contact Support: ',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              trailing: Text('0803-445-7764'),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.blue,
              ),
              trailing: Text('homecomplaint@homeaid.com'),
            ),
          ],
        ),
      ),
    );
  }
}
