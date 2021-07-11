import 'package:flutter/material.dart';
import 'package:flutter_signin_1/services/shared_preference_service.dart';
import 'package:flutter_signin_1/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/extensions.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController usernameController = new TextEditingController();
  late TextEditingController passwordController = new TextEditingController();
  late var remember = false;
  late bool hidePassword = true;
  late SharedPreferenceService _service;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _service = SharedPreferenceService();
    super.initState();
  }

  Future<bool> _handleLogin(String username, String password) async {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: kDefaultPadding * 5),

                //! logo
                FlutterLogo(size: 64),

                SizedBox(height: kDefaultPadding),

                Container(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 32),
                  ),
                ),

                SizedBox(height: kDefaultPadding),

                //! username or email
                Container(
                  child: Text('Username or Email'),
                ),
                SizedBox(height: kDefaultPadding / 2),

                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'Enter Username or Email',
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
                Container(child: Text('Password')),

                SizedBox(height: kDefaultPadding / 2),

                TextFormField(
                  controller: passwordController,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye),
                      color: !this.hidePassword ? Colors.blue : Colors.grey,
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

                //! remember me
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      activeColor: kDefaultColor,
                      value: remember,
                      onChanged: (value) async {
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();
                        preferences.setBool('remember_me', value!);

                        setState(() {
                          remember = value;
                        });

                        var res = preferences.getBool('remember_me');
                        print('REMEMBER : $res');
                      },
                    ),
                    Text(
                      'Remember Me',
                      style: kDefaultTextStyle,
                    )
                  ],
                ),

                SizedBox(height: kDefaultPadding),

                //! login
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: kDefaultColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          print('clicked');

                          var response = await _handleLogin(
                            usernameController.text,
                            passwordController.text,
                          );

                          if (response) {
                            // Navigator.pushReplacementNamed(context, '/home');
                            Navigator.pushNamed(context, '/home');
                          }
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 0.75,
                        ),
                        child: Text('Login'),
                      ),
                    ),
                    Text(
                      'Forgot Password ?',
                      style: kDefaultTextStyle,
                    )
                  ],
                ),

                SizedBox(height: kDefaultPadding * 2),

                //! signup
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),
                    TextButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding / 2),
                        child: Text(
                          'Sign Up',
                          style: kDefaultTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
