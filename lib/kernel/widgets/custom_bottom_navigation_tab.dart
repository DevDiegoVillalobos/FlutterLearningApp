import 'package:flutter/material.dart';
import 'package:leraning_b_app/kernel/colors/colors_app.dart';

class CustomBottomNavigationTab extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationTab(
      {Key? key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cuenta'),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Noticias')
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorsApp.successColor,
      onTap: onItemTapped,
    );
  }
}
