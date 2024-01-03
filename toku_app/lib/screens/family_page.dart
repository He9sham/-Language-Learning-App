import 'package:flutter/material.dart';
import 'package:toku_app/components/category.dart';
import 'package:toku_app/models/Number.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  // ignore: non_constant_identifier_names
  final List<Models> Family = const [
    Models(
        images: 'assets/images/family_members/family_father.png',
        japaneseName: 'Chichioya',
        englishName: 'Fathar',
        sound: 'sounds/family_members/father.wav'),
    Models(
        images: 'assets/images/family_members/family_daughter.png',
        japaneseName: 'Musume',
        englishName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    Models(
        images: 'assets/images/family_members/family_grandfather.png',
        japaneseName: 'Sofu',
        englishName: 'grandfather',
        sound: 'sounds/family_members/grand father.wav'),
    Models(
        images: 'assets/images/family_members/family_grandmother.png',
        japaneseName: 'Sobo',
        englishName: 'grandmother',
        sound: 'sounds/family_members/grand mother.wav'),
    Models(
        images: 'assets/images/family_members/family_mother.png',
        japaneseName: 'Hahaoya',
        englishName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    Models(
        images: 'assets/images/family_members/family_older_brother.png',
        japaneseName: 'Ani',
        englishName: 'older bother',
        sound: 'sounds/family_members/older bother.wav'),
    Models(
        images: 'assets/images/family_members/family_older_sister.png',
        japaneseName: 'Ane',
        englishName: 'older sister',
        sound: 'sounds/family_members/older sister.wav'),
    Models(
        images: 'assets/images/family_members/family_son.png',
        japaneseName: 'Musuko',
        englishName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    Models(
        images: 'assets/images/family_members/family_younger_brother.png',
        japaneseName: 'Otōto',
        englishName: 'younger brohter',
        sound: 'sounds/family_members/younger brohter.wav'),
    Models(
        images: 'assets/images/family_members/family_younger_sister.png',
        japaneseName: 'Imōto',
        englishName: 'younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: Family.length,
        itemBuilder: (context, index) {
          return category(
            number: Family[index],
            color: const Color(0xff568735),
          );
        },
        //children: getlist(numbers),
      ),
    );
  }
}
