import 'package:flutter/material.dart';
import 'package:treveam/screens/components/custom_actions.dart';
import 'package:treveam/screens/my_treveam/components/my_treveam_body.dart';


class MyTreveamScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("마이 트래빔"),
        actions: [CustomActions()],
      ),
      body: SingleChildScrollView(
        child: MyTreveamBody(),
      ),
    );
  }
}