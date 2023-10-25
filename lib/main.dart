import 'package:flutter/material.dart';
import 'package:leraning_b_app/kernel/widgets/menu.dart';
import 'package:leraning_b_app/kernel/widgets/splash.dart';
import 'package:leraning_b_app/modules/forms/adapters/screens/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/menu': (context) => const Menu(),
        '/profile': (context) => const Profile()
      },
    );
  }
}
