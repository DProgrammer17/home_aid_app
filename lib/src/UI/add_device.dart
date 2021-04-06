import 'package:flutter/material.dart';

class AddDeviceScreen extends StatelessWidget {
  static const String id = 'add_device.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 28.0,
          ),
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Image(
              image: AssetImage('images/home_aid_logo.png'),
              width: 50.0,
              height: 50.0,
            ),
          ),
        ),
      ),
      body: AddDeviceContents(),
    );
  }
}

class AddDeviceContents extends StatefulWidget {
  @override
  _AddDeviceContentsState createState() => _AddDeviceContentsState();
}

class _AddDeviceContentsState extends State<AddDeviceContents> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'ADD DEVICE',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: Text(
                  'Details:',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text('Room Name'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: SizedBox(
                  child: Divider(
                    color: Colors.black,
                    thickness: 1.0,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Add Devices:',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Icon(
                      Icons.add,
                      size: 25.0,
                    ),
                  ),
                ],
              ),
              //TODO: Refactor these buttons
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Lights',
                          style: TextStyle(
                            fontSize: 16.0,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: ElevatedButton(
                        child: Text('ADD'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('A/c',
                          style: TextStyle(
                            fontSize: 16.0,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: ElevatedButton(
                        child: Text('ADD'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Tv',
                          style: TextStyle(
                            fontSize: 16.0,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: ElevatedButton(
                        child: Text('ADD'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Fan',
                          style: TextStyle(
                            fontSize: 16.0,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: ElevatedButton(
                        child: Text('ADD'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
