import 'package:flutter/material.dart';
import 'package:login/login_page.dart';
import 'package:login/register_page.dart';
import 'package:login/widgets/primary_button.dart';
import 'package:login/theme.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("137 saiyed", style: heading2.copyWith(color: textBlack)),
          SizedBox(height: 500),
          CustomPrimaryButton(
            buttonColor: primaryBlue,
            textValue: 'Login',
            textColor: Colors.white,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          SizedBox(height: 10),
          CustomPrimaryButton(
            buttonColor: textGrey,
            textValue: 'Register',
            textColor: Colors.white,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
          ),
        ],
      ),
    )));
  }
}
