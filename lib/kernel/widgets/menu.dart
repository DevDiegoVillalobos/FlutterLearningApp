import 'package:flutter/material.dart';
import 'package:leraning_b_app/config/navigation/account_navigation.dart';
import 'package:leraning_b_app/config/navigation/home_navigation.dart';
import 'package:leraning_b_app/config/navigation/news_navigation.dart';
import 'package:leraning_b_app/kernel/widgets/custom_bottom_navigation_tab.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectIndex = 0;
  final homeNavigatorKey = GlobalKey<NavigatorState>();
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: const [
          HomeNavigation(),
          AccountNavigation(),
          NewsNavigation()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationTab(
          selectedIndex: _selectIndex, onItemTapped: _onItemTapped),
    );
  }
}
