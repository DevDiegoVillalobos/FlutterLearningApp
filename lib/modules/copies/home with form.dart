import 'package:flutter/material.dart';
import 'package:leraning_b_app/kernel/colors/colors_app.dart';
import 'package:leraning_b_app/modules/forms/adapters/screens/first_form.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          backgroundColor: ColorsApp.primayColor,
        ),
        body: const FirstForm());
  }
}
