import 'package:flutter/material.dart';
import 'package:home_aid_design/src/UI/login_screen.dart';
import 'package:home_aid_design/src/Utils/login_registration_input_buttons.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen.dart';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String fullName;
  String username;
  String email;
  String phoneNumber;
  String password;
  String cPassword;
  TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    // getConnectionStatus();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  'images/sign_up_illustration.png',
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 0.0,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 0.0, right: 0.0, top: 16.0, bottom: 8.0),
                          child: Image(
                            image: AssetImage('images/home_aid_logo.png'),
                            width: 90.0,
                            height: 90.0,
                          ),
                        ),
                      ),
                      Text(
                        'SIGN-UP',
                        // style: kOnBoardingTextStyle,
                      ),
                      InputField(
                          obscureText: false,
                          labelText: 'Full Name',
                          hintText: 'John Doe',
                          validator: (value) {
                            Pattern pattern =
                                r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
                            RegExp regex = new RegExp(pattern);
                            if (value.length == 0) {
                              return 'Please enter your name';
                            } else if (!regex.hasMatch(value)) {
                              return 'Enter a name';
                            } else
                              return null;
                          },
                          onSaved: (value) => fullName = value,
                          keyboardType: TextInputType.text),
                      InputField(
                          obscureText: false,
                          labelText: 'Username',
                          hintText: 'john62',
                          validator: (value) {
                            Pattern pattern =
                                r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
                            RegExp regex = new RegExp(pattern);
                            if (value.length == 0) {
                              return 'Please enter a username';
                            } else if (!regex.hasMatch(value)) {
                              return 'Enter a name';
                            } else
                              return null;
                          },
                          onSaved: (value) => username = value,
                          keyboardType: TextInputType.text),
                      InputField(
                          obscureText: false,
                          labelText: 'Email',
                          hintText: 'johndoe@email.com',
                          validator: (email) => '',
                          onSaved: (value) => email = value,
                          keyboardType: TextInputType.emailAddress),
                      InputField(
                          obscureText: false,
                          labelText: 'Phone Number',
                          hintText: 'e.g 08012345678',
                          validator: (value) {
                            Pattern pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                            RegExp regExp = new RegExp(pattern);
                            if (value.length == 0) {
                              return 'Please enter mobile number';
                            } else if (!regExp.hasMatch(value)) {
                              return 'Please enter valid mobile number';
                            }
                            return null;
                          },
                          onSaved: (value) => phoneNumber = value,
                          keyboardType: TextInputType.phone),
                      InputField(
                          controller: _controller,
                          obscureText: true,
                          labelText: 'Password',
                          hintText: 'At least one of each "A-Z", "a-z", "!,@"',
                          validator: (value) {
                            Pattern pattern =
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
                            RegExp regex = new RegExp(pattern);
                            print(value);
                            if (value.isEmpty) {
                              return 'Please enter password';
                            } else {
                              if (!regex.hasMatch(value))
                                return 'Enter valid password';
                              else
                                return null;
                            }
                          },
                          onSaved: (value) => password = value,
                          keyboardType: TextInputType.text),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        height: 55.0,
                        minWidth: 320.0,
                        color: Colors.orangeAccent,
                        onPressed: () {
                          print('Pay up Ebun');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, LoginScreen.id);
                              },
                              child: Text(
                                'Sign-In',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
