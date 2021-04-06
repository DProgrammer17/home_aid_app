import 'package:flutter/material.dart';

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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('images/appliances_devices_illustration.png'),
          alignment: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'HOME',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Active Area'),
                            Text('- Living Room: Lights'),
                            Text('- Master Bedroom: A/c'),
                          ],
                        ),
                      ),
                      Image(
                        image: AssetImage('images/active_area_couch_icon.png'),
                        height: 120.0,
                        width: 120.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Lights',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '- Living Room: On',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '- Stacys Room: On',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image(
                                      image: AssetImage(
                                          'images/lights_indicator_lightbubl_icon.png'),
                                      height: 50.0,
                                      width: 50.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sensors',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '- Motion Sensors: Secure',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '- Gas Sensors: Stable',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '- Cameras: Enabled',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image(
                                      image:
                                          AssetImage('images/sensor_icon.png'),
                                      height: 50.0,
                                      width: 50.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Active Area',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '- Living Room: Lights',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '- Master Bedroom: A/c',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Center(
                                  child: Image(
                                    image: AssetImage(
                                        'images/washing_machine_icon.png'),
                                    height: 60.0,
                                    width: 60.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
