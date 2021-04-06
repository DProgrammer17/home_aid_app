import 'package:flutter/material.dart';

class ApplianceScreen extends StatelessWidget {
  static const String id = 'appliances_screen.dart';

  @override
  Widget build(BuildContext context) {
    return ApplianceContents();
  }
}

class ApplianceContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('images/appliances_list_illustration.png'),
          alignment: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              child: Divider(
                color: Colors.black,
                thickness: 1.1,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Living Room',
                        style: TextStyle(
                            fontSize: 12.0, decoration: TextDecoration.none),
                      ),
                      Text('Status: Active'),
                    ],
                  ),
                  Image(
                    width: 30.0,
                    height: 30.0,
                    image: AssetImage('images/arrow_icon.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Divider(
                color: Colors.black,
                thickness: 1.1,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Master Bedroom'),
                      Text('Status: Inactive'),
                    ],
                  ),
                  Image(
                    width: 30.0,
                    height: 30.0,
                    image: AssetImage('images/arrow_icon.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Divider(
                color: Colors.black,
                thickness: 1.1,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kitchen'),
                      Text('Status: Inactive'),
                    ],
                  ),
                  Image(
                    width: 30.0,
                    height: 30.0,
                    image: AssetImage('images/arrow_icon.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Divider(
                color: Colors.black,
                thickness: 1.1,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Timmy\'s Room'),
                      Text('Status: Inactive'),
                    ],
                  ),
                  Image(
                    width: 30.0,
                    height: 30.0,
                    image: AssetImage('images/arrow_icon.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Divider(
                color: Colors.black,
                thickness: 1.1,
              ),
            ),
// Align(
//   alignment: Alignment.bottomRight,
//   child: FloatingActionButton(onPressed: () {
//     print('Ebun Money');
//   }),
// ),
          ],
        ),
      ),
    );
  }
}
