import 'package:flutter/material.dart';
import 'package:treveam/routes.dart';
import 'package:treveam/screens/splash/splash_screen.dart';
import 'package:treveam/theme.dart';

void main() => runApp(TreveamUI());

class TreveamUI extends StatelessWidget {
  const TreveamUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI',
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    );
  }
}
