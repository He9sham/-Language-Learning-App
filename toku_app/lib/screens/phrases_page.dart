import 'package:flutter/material.dart';
import 'package:toku_app/components/phrasrs_cate.dart';
import 'package:toku_app/models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names
  final List<phrases> phrases_list = const [
    phrases(
        enname: 'are you coming',
        jpname: 'Kimasu ka',
        sound: 'sounds/phrases/are_you_coming.wav'),
    phrases(
        enname: 'dont forget to subscribe',
        jpname: 'Kōdoku suru koto o wasurenaide kudasai',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    phrases(
        enname: 'how are you feeling',
        jpname: 'Go kibun wa ikagadesu ka',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    phrases(
        enname: 'i love anime',
        jpname: 'Watashi wa anime ga daisukidesu',
        sound: 'sounds/phrases/i_love_anime.wav'),
    phrases(
        enname: 'programming is easy',
        jpname: 'Puroguramingu wa kantandesu',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    phrases(
        enname: 'what is your name',
        jpname: 'Anata no namae wa nandesuka',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    phrases(
        enname: 'where are you going',
        jpname: 'Doko ni iku no',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    phrases(
        enname: 'i love programming',
        jpname: 'Watashi wa puroguramingu ga daisukidesu',
        sound: 'sounds/phrases/i_love_programming.wav'),
    phrases(
        enname: 'yes im coming',
        jpname: 'Hai, kimasu',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phreses',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases_list.length,
        itemBuilder: (context, index) {
          return PhrasrsCate(
            phrasess: phrases_list[index],
            color: const Color(0xff50ADC7),
          );
        },
        //children: getlist(numbers),
      ),
    );
  }
}
