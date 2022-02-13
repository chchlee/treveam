import 'package:flutter/material.dart';
import 'package:treveam/models/text_menu.dart';
import 'package:treveam/screens/components/text_menu_card.dart';
import 'package:treveam/screens/my_treveam/components/my_treveam_header.dart';

class MyTreveamBody extends StatelessWidget {
  const MyTreveamBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTreveamHeader(),
        buildPaddingTextMenuCard("비회원 메뉴 조회", () { }),
        SizedBox(
          height: 330,
          child: ListView.separated(
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) => SizedBox(
              height: 55,
              child: TextMenuCard(
                title: textMenuList[index].text,
                icon: textMenuList[index].icon,
                press: () {},
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              height: 0,
            ),
            itemCount: textMenuList.length,
          ),
        ),
        buildPaddingTextMenuCard("컬리 소개", () { })
      ],
    );
  }

  Padding buildPaddingTextMenuCard(String text, GestureTapCallback press){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: 55,
        child: TextMenuCard(
          title: text,
          icon: "assets/icons/right-arrow.svg",
          press: press,
          textColor: Colors.black,
        ),
      ),
      );
  }
}