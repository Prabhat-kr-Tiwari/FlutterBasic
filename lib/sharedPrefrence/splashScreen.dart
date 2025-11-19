import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_basic/sharedPrefrence/sharedprefrencelogin.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () async {
      bool loggedIn = await isLogin();

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder:
              (context) => loggedIn ? HomePage() : SharedprefrenceLoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "Classico",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> isLogin() async {
    var pref = await SharedPreferences.getInstance();
    var isLogin = pref.getBool("islogin");
    return isLogin != null ? isLogin : false;
  }
}
