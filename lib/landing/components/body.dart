import 'package:flutter/material.dart';
import 'package:spaceng_app/Login/login_page.dart';
import 'package:spaceng_app/SignUp/signup_page.dart';
import 'package:spaceng_app/components/rounded_button.dart';
import 'package:spaceng_app/constants.dart';
import 'package:spaceng_app/landing/components/background.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(child: SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME TO SPACE.NG",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: size.height * 0.05
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              },
              ),
              );
            },
          ),
          RoundedButton(
            text: "SIGN UP",
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (contex) {
                return SignUpPage();
              },
              ),
              );
            },
          ),
        ],

      ),
    ),
    );
  }
}