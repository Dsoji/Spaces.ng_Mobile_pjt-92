import 'package:flutter/material.dart';
import 'package:spaceng_app/constants.dart';

import 'Main/Main_Page.dart';
import 'landing/landng_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space.ng',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.purpleAccent[100],
      ),
      home: LandingPage(),
    );
  }
}

