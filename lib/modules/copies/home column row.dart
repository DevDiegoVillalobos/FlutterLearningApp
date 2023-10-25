import 'package:flutter/material.dart';
import 'package:leraning_b_app/kernel/colors/colors_app.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          backgroundColor: ColorsApp.primayColor,
        ),
        body: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            color: ColorsApp.dangerColor,
            child: const Row(
              children: [Text('Diego'), Text('Villalobos'), Text('Hernandez')],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            color: ColorsApp.successColor,
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [Text('Diego'), Text('Villalobos'), Text('Hernandez')],
            ),
          ),
        ]));
  }
}
