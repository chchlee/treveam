import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:treveam/constants.dart';
import 'package:treveam/models/nav_item.dart';
import 'package:treveam/screens/home/home_screen.dart';
import 'package:treveam/screens/recommend/recommend_screen.dart';
import 'package:treveam/screens/search/search_screen.dart';

import 'category/category_screen.dart';
import 'my_treveam/my_treveam_screen.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/main_screens";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          RecommendScreen(),
          CategoryScreen(),
          SearchScreen(),
          MyTreveamScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: onTaped,
        items: List.generate(
          navItems.length,
          (index) => _buildBottomNavigationBarItem(
            icon: navItems[index].icon,
            label: navItems[index].label,
            isActive: navItems[index].id == _selectedIndex ? true : false,
          ),
        ),
      ),
    );
  }
  void onTaped(index){
    setState(() {
      _selectedIndex : index;
    });
  }

  _buildBottomNavigationBarItem(
    {
      String? icon,
      String? label,
      bool isActive = false,
      GestureTapCallback? press}){
        return BottomNavigationBarItem(
          icon: SizedBox(
            width: 38,
            height: 38,
            child: IconButton(
              onPressed: press,
              icon: SvgPicture.asset(icon ?? "assets/icons/star.svg",
              color: isActive ? kPrimaryColor: Colors.black,),
            ),
            ),
            label: label,
        );
      } 
}
