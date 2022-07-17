import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {

  void tocarSom (int numSom) {
    final player = AudioCache();
    player.play('nota$numSom.wav');
  }

  Expanded criarBotao ({Color cor, int num}) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          tocarSom(num);
        },
        style: TextButton.styleFrom(
          backgroundColor: cor,
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(cor: Colors.red, num: 1),
              criarBotao(cor: Colors.orange, num: 2),
              criarBotao(cor: Colors.yellow, num: 3),
              criarBotao(cor: Colors.green, num: 4),
              criarBotao(cor: Colors.lightBlue, num: 5),
              criarBotao(cor: Colors.blue, num: 6),
              criarBotao(cor: Colors.deepPurple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
