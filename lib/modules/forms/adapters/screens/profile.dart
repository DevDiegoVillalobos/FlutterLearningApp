import 'package:flutter/material.dart';
import 'package:leraning_b_app/kernel/colors/colors_app.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Perfil'),
          backgroundColor: ColorsApp.primayColor,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: const Center(
            child: Text('Has iniciado sesión'),
          ),
        ));
  }
}
