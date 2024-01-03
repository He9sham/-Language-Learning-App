import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap});
  final Color? color;
  final String? text;
  VoidCallback? onTap;
  // or using is function
  //Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
