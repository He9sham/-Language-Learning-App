import 'package:flutter/material.dart';
import 'package:toku_app/components/category.dart';
import 'package:toku_app/models/Number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Models> numbers = const [
    Models(
        images: 'assets/images/numbers/number_one.png',
        japaneseName: 'ichi',
        englishName: 'One',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Models(
        images: 'assets/images/numbers/number_two.png',
        japaneseName: 'Ni',
        englishName: 'Two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Models(
        images: 'assets/images/numbers/number_three.png',
        japaneseName: 'san',
        englishName: 'Three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Models(
        images: 'assets/images/numbers/number_four.png',
        japaneseName: 'Shi',
        englishName: 'Four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Models(
        images: 'assets/images/numbers/number_five.png',
        japaneseName: 'Go',
        englishName: 'Five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Models(
        images: 'assets/images/numbers/number_six.png',
        japaneseName: 'Roku',
        englishName: 'Six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Models(
        images: 'assets/images/numbers/number_seven.png',
        japaneseName: 'Sebun',
        englishName: 'Seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Models(
        images: 'assets/images/numbers/number_eight.png',
        japaneseName: 'Hachi',
        englishName: 'Eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Models(
        images: 'assets/images/numbers/number_nine.png',
        japaneseName: 'Kyū',
        englishName: 'Nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Models(
        images: 'assets/images/numbers/number_ten.png',
        japaneseName: 'Jū',
        englishName: 'Ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return category(
            number: numbers[index],
            color: const Color(0xffEF9235),
          );
        },
        //children: getlist(numbers),
      ),
    );
  }

  // this is for fill a items

  List<Widget> getlist(List<Models> numbers) {
    List<Widget> item_list = [];
    for (int i = 0; i < numbers.length; i++) {
      item_list.add(
        category(
          number: numbers[i],
          color: const Color(0xffEF9235),
        ),
      );
    }
    return item_list;
  }
}
