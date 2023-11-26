import 'package:flutter/material.dart';
import 'package:pongas/ball.dart';
import 'package:pongas/handle.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center (
        child: Stack (
          children: [
            // top handle

            Handle(
              x: 0, y:-0.9
            ),
            // bottom handle
            Handle(
              x: 0, y:0.9),

            // ball

            Ball(
              x: 0, y: 0,
            )


          ],
        ),
      )
    );

  }



}