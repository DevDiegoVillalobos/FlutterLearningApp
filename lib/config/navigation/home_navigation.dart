import 'package:flutter/material.dart';
import 'package:leraning_b_app/modules/forms/adapters/screens/profile.dart';
import 'package:leraning_b_app/modules/home.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({super.key, required});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        //'/home/images':(context) => const Images(),
        '/profile': (context) => const Profile()
      },
    );
  }
}
