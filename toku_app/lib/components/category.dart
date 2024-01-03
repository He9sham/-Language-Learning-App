import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/Number.dart';

// ignore: camel_case_types
class category extends StatelessWidget {
  const category({super.key, required this.number, required this.color});
  final Models number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 120,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(number.images),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.japaneseName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  number.englishName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () async {
                try {
                  {
                    // ignore: unused_local_variable
                    AudioCache cache =
                        AudioCache(prefix: 'assets/sounds/numbers/');
                    final AudioPlayer player = AudioPlayer();
                    await player.play(
                      AssetSource(number.sound),
                    );
                  }
                } catch (ex) {
                  print(ex);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
