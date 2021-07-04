import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spaceng_app/Login/login_page.dart';
import 'package:spaceng_app/Main/Main_Page.dart';
import 'package:spaceng_app/SignUp/components/background.dart';
import 'package:spaceng_app/SignUp/components/or_divider.dart';
import 'package:spaceng_app/SignUp/components/social_icon.dart';
import 'package:spaceng_app/components/already_have_an_account.dart';
import 'package:spaceng_app/components/rounded_button.dart';
import 'package:spaceng_app/components/rounded_input_fied.dart';
import 'package:spaceng_app/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGN UP",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset("assets/icons/Mediamodifier-Design-Template.svg",
          height: size.height * 0.35),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGN UP",
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
            login: false,
            press: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return LoginPage();
                },
                ),
              );
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc: "assets/icons/google-plus.svg",
                  //onpressed: () {},
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}