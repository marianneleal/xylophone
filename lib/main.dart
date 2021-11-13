import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () {
                    playSound(7);
                  },
                  child: const Text('Note 7'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                  child: const Text('Note 6'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow),
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                  child: const Text('Note 5'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                  child: const Text('Note 4'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.teal),
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                  child: const Text('Note 3'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                  child: const Text('Note 2'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: const Text('Note 1'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
