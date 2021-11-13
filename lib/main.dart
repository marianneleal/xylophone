import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Expanded buildKey(int soundNumber, String noteName, Color keyColor) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(keyColor),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(noteName),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Your Xylophone'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(7, 'H', Colors.red),
                buildKey(6, 'A', Colors.orange),
                buildKey(5, 'G', Colors.yellow),
                buildKey(4, 'F', Colors.green),
                buildKey(3, 'E', Colors.teal),
                buildKey(2, 'D', Colors.blue),
                buildKey(1, 'C', Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
