import 'package:flutter/material.dart';
import 'package:toku_app/components/category_home.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }));
              },
              text: 'Numbres',
              color: const Color(0xffEF9235),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyPage();
                }));
              },
              text: 'Famliy Members',
              color: const Color(0xff558B38),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Colorsitem();
                }));
              },
              text: 'Colors',
              color: const Color(0xff78359F),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              },
              text: 'Phrases',
              color: const Color(0xff50ADC7),
            ),
          ),
        ],
      ),
    );
  }
}
