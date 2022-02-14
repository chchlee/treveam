import 'package:flutter/material.dart';
import 'package:treveam/screens/main_screens.dart';
import 'package:treveam/screens/sign_in/signin_screen.dart';
import 'package:treveam/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route ={
  SplashScreen.routeName: ((context) => SplashScreen()),
  MainScreen.routeName: ((context) => MainScreen()),
  SignInScreen.routeName: ((context) => SignInScreen()),
};