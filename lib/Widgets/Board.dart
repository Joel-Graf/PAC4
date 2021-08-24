import 'package:flutter/material.dart';
import 'BoardTile.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          BoardTile(),
          BoardTile(),
          BoardTile(),
        ]),
        TableRow(children: [
          BoardTile(),
          BoardTile(),
          BoardTile(),
        ]),
        TableRow(children: [
          BoardTile(),
          BoardTile(),
          BoardTile(),
        ]),
      ],
    );
  }
}
