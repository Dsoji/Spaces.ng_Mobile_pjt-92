import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spaceng_app/Login/components/background.dart';
import 'package:spaceng_app/Main/Main_Page.dart';
import 'package:spaceng_app/SignUp/signup_page.dart';
import 'package:spaceng_app/components/already_have_an_account.dart';
import 'package:spaceng_app/components/rounded_button.dart';
import 'package:spaceng_app/components/rounded_input_fied.dart';
import 'package:spaceng_app/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("LOGIN",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/Mediamodifier-Design-Template.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return MainPage();
                },
                ),
              );
            },
          ),
          SizedBox(height: size.height *0.03),
          AlreadyHaveAccountCheck(
            press: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return SignUpPage();
              },
              ),
              );
            },
          ),
        ],
      ),
    ),);
}}