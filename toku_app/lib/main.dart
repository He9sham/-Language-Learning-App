import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_page.dart';

void main() {
  runApp(const Toku_app());
}

class Toku_app extends StatelessWidget {
  const Toku_app({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage()
    );
  }
}