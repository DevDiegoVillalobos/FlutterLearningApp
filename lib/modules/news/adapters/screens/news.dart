import 'package:flutter/material.dart';
import 'package:leraning_b_app/kernel/colors/colors_app.dart';
import 'package:leraning_b_app/kernel/widgets/custom_carousel.dart';
import 'package:leraning_b_app/modules/account.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> itemList = <Widget>[const FirstSection()];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
        backgroundColor: ColorsApp.primayColor,
      ),
      body: Center(
        child: CustomCarousel(
          itemList: itemList,
          carouselHeight: 300,
        ),
      ),
    );
  }
}

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo_utez.png',
            height: 150,
            width: width,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Utez - escuela de calidad',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
