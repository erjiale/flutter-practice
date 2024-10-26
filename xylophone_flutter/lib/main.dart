import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  playAudio(audioFileName) {
    AssetsAudioPlayer.newPlayer().open(
        Audio(audioFileName),
        autoStart: true,
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                playAudio("note2.wav");
              },
              child: Text('button')
            )
          ),
        ),
      ),
    );
  }
}
