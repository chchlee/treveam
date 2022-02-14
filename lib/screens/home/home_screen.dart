import 'package:flutter/material.dart';
import 'package:treveam/constants.dart';
import 'package:treveam/screens/components/custom_actions.dart';
import 'package:treveam/screens/home/components/benefit_page.dart';
import 'package:treveam/screens/home/components/find_friends_page.dart';
import 'package:treveam/screens/home/components/my_map_page.dart';
import 'package:treveam/screens/home/components/treveam_page.dart';
import 'package:treveam/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categories = ["내 지도", "친구 찾기", "트래빔 추천", "이번주 혜택"];
    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Treveam"),
          actions: [
            CustomActions(),
          ],
          bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.3, color: Colors.grey)),
                  color: Colors.white),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                  (index) => Tab(
                    text: categories[index],
                  ),
                ),
                labelColor: kPrimaryColor,
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().headline2?.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColor),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(42),
          ),
        ),
        body: TabBarView(
          children: [
            MyMapPage(),
            FindFreindsPage(),
            TreveamPage(),
            BenefitPage(),
          ],
        ),
      ),
    );
  }
}
