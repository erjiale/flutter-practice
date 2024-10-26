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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () => playAudio('note1.wav'),
                child: Container(
                  height: 100,
                  color: Colors.black12,
                ),
              ),
              TextButton(
                onPressed: () => playAudio('note2.wav'),
                child: Container(
                  height: 100,
                  color: Colors.black26,
                ),
              ),
              TextButton(
                onPressed: () => playAudio('note3.wav'),
                child: Container(
                  height: 100,
                  color: Colors.black38,
                ),
              ),
              TextButton(
                onPressed: () => playAudio('note4.wav'),
                child: Container(
                  height: 100,
                  color: Colors.black45,
                ),
              ),
              TextButton(
                onPressed: () => playAudio('note5.wav'),
                child: Container(
                  height: 100,
                  color: Colors.black54,
                ),
              ),
              TextButton(
                onPressed: () => playAudio('note6.wav'),
                child: Container(
                  height: 100,
                  color: Colors.black87,
                ),
              ),
              TextButton(
                onPressed: () => playAudio('note7.wav'),
                child: Container(
                  height: 100,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
