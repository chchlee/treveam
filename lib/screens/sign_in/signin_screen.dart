import 'package:flutter/material.dart';
import 'package:treveam/screens/sign_in/components/treveam_sign_form.dart';
import 'package:treveam/theme.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "로그인",
          style: textTheme().subtitle1?.copyWith(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: PreferredSize(
          child: Divider(),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      body: TreveamSignForm(),
    );
  }
  OutlineInputBorder outlineInputBorder(Color color){
    return OutlineInputBorder(borderSide: BorderSide(color: color,width: 1));
  }
}