import 'package:flutter/material.dart';
import 'package:spaceng_app/constants.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAccountCheck({
    Key key,
    this.login = true,
    this.press,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ?
              "Don't have an Account? " :
              "Already have account? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color:  kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}