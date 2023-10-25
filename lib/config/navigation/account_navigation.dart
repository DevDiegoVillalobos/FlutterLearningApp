import 'package:flutter/material.dart';
import 'package:leraning_b_app/modules/account.dart';
import 'package:leraning_b_app/modules/forms/adapters/screens/profile.dart';
import 'package:leraning_b_app/modules/forms/adapters/screens/register.dart';

class AccountNavigation extends StatelessWidget {
  const AccountNavigation({super.key, required});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/account',
      routes: {
        '/account': (context) => const Account(),
        '/profile': (context) => const Profile(),
        '/register': (context) => const Register()
      },
    );
  }
}
