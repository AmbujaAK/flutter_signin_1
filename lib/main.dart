import 'package:flutter/material.dart';
import 'package:flutter_signin_1/pages/home_page.dart';
import 'package:flutter_signin_1/pages/login_page.dart';
import 'package:flutter_signin_1/pages/signup_page.dart';
import 'package:flutter_signin_1/utils/constants.dart';

void main() => runApp(OmnirioApp());

class OmnirioApp extends StatelessWidget {
  const OmnirioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      initialRoute: '/',
      theme: ThemeData(primaryColor: kDefaultColor),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
