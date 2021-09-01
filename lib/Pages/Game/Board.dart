import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Tile/Tile.dart';

import 'Util/Classes.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tile(Position(1, 1)),
            Tile(Position(2, 1)),
            Tile(Position(3, 1)),
            Tile(Position(4, 1)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tile(Position(1, 2)),
            Tile(Position(2, 2)),
            Tile(Position(3, 2)),
            Tile(Position(4, 2)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tile(Position(1, 3)),
            Tile(Position(2, 3)),
            Tile(Position(3, 3)),
            Tile(Position(4, 3)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tile(Position(1, 4)),
            Tile(Position(2, 4)),
            Tile(Position(3, 4)),
            Tile(Position(4, 4)),
          ],
        ),
      ],
    );
  }
}
