import 'package:flutter/material.dart';
import 'package:flutter_signin_1/utils/constants.dart';
import '../utils/extensions.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  bool referralChecked = false;
  bool policyChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: kDefaultPadding * 2),

                  //! logo
                  FlutterLogo(size: 64),

                  SizedBox(height: kDefaultPadding),

                  Container(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 32),
                    ),
                  ),

                  SizedBox(height: kDefaultPadding),

                  //! Full Name
                  Container(
                    child: Text('Full Name*'),
                  ),
                  SizedBox(height: kDefaultPadding / 2),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Full Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Please enter username";
                      }
                    },
                  ),
                  SizedBox(height: kDefaultPadding),

                  //! username or email
                  Container(
                    child: Text('Email*'),
                  ),
                  SizedBox(height: kDefaultPadding / 2),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Please enter username";
                      }
                      return text.isValidEmail()
                          ? null
                          : "please enter valid email";
                    },
                  ),
                  SizedBox(height: kDefaultPadding),

                  //! password
                  Container(
                    child: Text('Password*'),
                  ),
                  SizedBox(height: kDefaultPadding / 2),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Please enter password";
                      }

                      return text.isValidPassword()
                          ? null
                          : 'please enter valid password';
                    },
                  ),
                  SizedBox(height: kDefaultPadding),

                  //! Mobile Number
                  Container(
                    child: Text('Mobile Number*'),
                  ),
                  SizedBox(height: kDefaultPadding / 2),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {
                          print('object');
                        },
                        icon: Icon(Icons.arrow_drop_down),
                      ),
                      hintText: 'Enter Mobile Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Please enter password";
                      }

                      return text.isValidPassword()
                          ? null
                          : 'please enter valid password';
                    },
                  ),
                  SizedBox(height: kDefaultPadding),

                  //! referral code
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        activeColor: kDefaultColor,
                        value: referralChecked,
                        onChanged: (value) {
                          setState(() {
                            referralChecked = !referralChecked;
                          });
                        },
                      ),
                      Text(
                        'Do you have a referral code?',
                        style: kDefaultTextStyle,
                      )
                    ],
                  ),

                  //! policy
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        activeColor: kDefaultColor,
                        value: policyChecked,
                        onChanged: (value) {
                          setState(() {
                            policyChecked = !policyChecked;
                          });
                        },
                      ),
                      Text(
                        'I agree with the terms and conditions',
                        style: kDefaultTextStyle,
                      )
                    ],
                  ),

                  SizedBox(height: kDefaultPadding),

                  //! Sign Up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: kDefaultColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('singup clicked');
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 0.75,
                            vertical: kDefaultPadding * 0.75,
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have an account?',
                          ),
                          TextButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text(
                              'Login',
                              style: kDefaultTextStyle,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
