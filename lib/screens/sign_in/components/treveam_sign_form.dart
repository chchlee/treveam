import 'package:flutter/material.dart';
import 'package:treveam/screens/components/default_button.dart';

class TreveamSignForm extends StatefulWidget {

  @override
  State<TreveamSignForm> createState() => _TreveamSignFormState();
}

class _TreveamSignFormState extends State<TreveamSignForm> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final List<String> errors =[];
  String? id;
  String? password;
  String kIdNull = "아이디를 입력해주세요";
  String kPasswordNull = "비밀번호를 입력해주세요";
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 12),
            SizedBox(height: 20,),
            DefaultButton(
              text: "로그인",
              press: () {
                if(_formkey.currentState!.validate() && errors.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('유효성 검사 확인'),
                    ),
                  );
                }
              },
            ),
            SizedBox(height:10),
          ],
        ),
      )
    );
  }
}