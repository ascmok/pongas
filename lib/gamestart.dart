import 'package:flutter/material.dart';

class GameStart extends StatelessWidget {

  late final bool gameStarted;

 GameStart({required this.gameStarted});

  @override

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, -0.2),
      child: Text(gameStarted ? '' : 'SPAUSK PRADETI ZAIDIMA',
      style: TextStyle(color: Colors.purple),),

    );
  }
}