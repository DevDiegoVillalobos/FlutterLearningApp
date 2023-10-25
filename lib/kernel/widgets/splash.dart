import 'package:flutter/material.dart';

import '../colors/colors_app.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // Se va a ejecutar despues de que el build se construyo
    super.initState();
    Future.delayed(const Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, '/menu'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsApp.whiteColor,
        body: Center(
          child: Image.asset('assets/images/logo_utez.png',
              width: 200, height: 150),
        ));
  }
}
