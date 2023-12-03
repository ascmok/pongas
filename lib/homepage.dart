import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pongas/ball.dart';
import 'package:pongas/gamestart.dart';
import 'package:pongas/handle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) :super (key: key);

  @override
  _HomePageState createState () => _HomePageState();
}
  class _HomePageState extends State <HomePage> {

    //ball variables

    double ballX = 0;
    double ballY = 0;

    bool gameStarted = false;

    void startGame () {

    gameStarted = true;
    Timer.periodic (Duration (milliseconds:25 ), (timer) {
    setState(() {
    ballY = ballY + 0.01;
    });
    });
  }

@override
Widget build(BuildContext context) {
  return GestureDetector(

      onTap: startGame,
      child: Scaffold(
          backgroundColor: Colors.yellow,
          body: Center(
            child: Stack(
              children: [
                //game start

                GameStart (gameStarted: gameStarted,),

                // top handle
                Handle(
                    x: 0, y: -0.9
                ),
                // bottom handle
                Handle(
                    x: 0, y: 0.9),

                // ball

                Ball(
                  x: ballX, y: ballY,
                )


              ],
            ),
          ))
  );
}

}

