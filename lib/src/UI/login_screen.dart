import 'package:flutter/material.dart';
import 'package:home_aid_design/src/UI/registration_screen.dart';
import 'package:home_aid_design/src/Utils/login_registration_input_buttons.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen.dart';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller;
  bool networkStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('images/log_in_illustration.png'),
                alignment: Alignment.bottomRight,
              ),
            ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0.0, right: 0.0, top: 16.0, bottom: 8.0),
                        child: Image(
                          image: AssetImage('images/home_aid_logo.png'),
                          width: 90.0,
                          height: 90.0,
                        ),
                      ),
                      Text(
                        'LOG-IN',
                        // style: kOnBoardingTextStyle,
                      ),
                      InputField(
                          obscureText: false,
                          labelText: 'Email',
                          hintText: 'e.g devshallyc@gmail.com',
                          validator: (value) => '',
                          onSaved: (value) => email = value,
                          keyboardType: TextInputType.emailAddress),
                      InputField(
                          obscureText: true,
                          controller: _controller,
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
                      SizedBox(
                        height: 20.0,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        height: 55.0,
                        minWidth: 320.0,
                        color: Colors.orangeAccent,
                        onPressed: () {
                          print('Ebun pay up');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RegistrationScreen.id);
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
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
