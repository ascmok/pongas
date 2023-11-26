import 'package:flutter/material.dart';

class Handle extends StatelessWidget {

  final x;
  final y;

  Handle ({this.x, this.y});

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment(x, y),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container (
          color: Colors.red,
          height: 20,
          width: 100,
        ),
      ),
    );
  }


}