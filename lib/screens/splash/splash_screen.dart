import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:treveam/constants.dart';
import 'package:treveam/screens/main_screens.dart';

class SplashScreen extends StatelessWidget {

  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Text(
                "UI",
                style: GoogleFonts.pacifico(fontSize: 28, color: Colors.white),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: TextButton(
                  child: Text("Continue"),
                  onPressed: () {
                    _completeSplash(context, MainScreen());
                  }
                ),
              )
            ),
          ],
        ),
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget widget){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext) => widget));
  }
}

