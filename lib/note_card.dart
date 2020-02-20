import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'create_note.dart';

class NoteCard extends StatelessWidget {
  final String name;
  final String data;
  final String note;
  final String colore;

  const NoteCard(this.name, this.data, this.note, this.colore);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.red[400],
      Colors.blue[400],
      Colors.purple[400],
      Colors.green[400],
      Colors.orange[400]
    ];
    final _random = new Random();

    var element = colors[_random.nextInt(colors.length)];
    return DecoratedBox(
        decoration: BoxDecoration(),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 5.0, // has the effect of softening the shadow
                    spreadRadius: 1.0, // has the effect of extending the shadow
                    offset: Offset(
                      1.0, // horizontal, move right 10
                      1.0, // vertical, move down 10
                    ),
                  )
                ],
                color: element,
              ),
              margin: new EdgeInsets.symmetric(horizontal: 30.0),
              width: 350,
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    ' ' + name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '     ' + data,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    '     ' + note,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
