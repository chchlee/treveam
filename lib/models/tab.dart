import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tab {
  final IconData icon;
  final String text;

  Tab({
    required this.icon,
    required this.text,
  });
}

List<Tab> tabs = [
  Tab(icon: FontAwesomeIcons.signInAlt, text: "로그인"),
  Tab(icon: FontAwesomeIcons.calendarAlt, text: "캘린더"),
  Tab(icon: FontAwesomeIcons.laugh, text: "이모티콘"),
  Tab(icon: FontAwesomeIcons.userFriends, text: "공지사항")
];
