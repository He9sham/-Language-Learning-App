import 'package:flutter/material.dart';
import 'package:toku_app/components/category.dart';
import 'package:toku_app/models/Number.dart';

class Colorsitem extends StatelessWidget {
  const Colorsitem({super.key});
  final List<Models> colorlist = const [
    Models(
        images: 'assets/images/colors/color_black.png',
        japaneseName: 'kuro',
        englishName: 'black',
        sound: 'sounds/colors/black.wav'),
    Models(
        images: 'assets/images/colors/color_brown.png',
        japaneseName: 'chairo',
        englishName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    Models(
        images: 'assets/images/colors/color_dusty_yellow.png',
        japaneseName: 'dasutiiero',
        englishName: 'dusty yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
    Models(
        images: 'assets/images/colors/color_gray.png',
        japaneseName: 'gure',
        englishName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    Models(
        images: 'assets/images/colors/color_green.png',
        japaneseName: 'midori',
        englishName: 'green',
        sound: 'sounds/colors/green.wav'),
    Models(
        images: 'assets/images/colors/color_red.png',
        japaneseName: 'aka',
        englishName: 'red',
        sound: 'sounds/colors/red.wav'),
    Models(
        images: 'assets/images/colors/color_white.png',
        japaneseName: 'shiro',
        englishName: 'white',
        sound: 'sounds/colors/white.wav'),
    Models(
        images: 'assets/images/colors/yellow.png',
        japaneseName: 'kiiro',
        englishName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colorlist.length,
        itemBuilder: (context, index) {
          return category(
            number: colorlist[index],
            color: const Color(0xff78359F),
          );
        },
        //children: getlist(numbers),
      ),
    );
  }
}
