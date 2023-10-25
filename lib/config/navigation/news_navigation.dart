import 'package:flutter/material.dart';
import 'package:leraning_b_app/modules/news/adapters/screens/news.dart';

class NewsNavigation extends StatelessWidget {
  const NewsNavigation({super.key, required});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/news',
      routes: {
        '/news': (context) => const News(),
      },
    );
  }
}
