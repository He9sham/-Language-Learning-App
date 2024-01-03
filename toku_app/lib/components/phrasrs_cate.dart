import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrases.dart';

class PhrasrsCate extends StatelessWidget {
  const PhrasrsCate({super.key, required this.color, required this.phrasess});
  final Color color;
  final phrases phrasess;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
   // var screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      color: color,
      height: 120,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.8,
                  child: Text(
                    phrasess.jpname,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Text(
                  phrasess.enname,
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
                      AssetSource(phrasess.sound),
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
// view bar showing if it succeeded to save img
   //   ScaffoldMessenger.of(localContext).showSnackBar(
     //   const SnackBar(
      //    content: Text('Photo saved in external storage directory'),
       // ),
     // );