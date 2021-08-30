import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Tile.dart';

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
            Tile(),
            Tile(),
            Tile(),
            Tile(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tile(),
            Tile(),
            Tile(),
            Tile(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tile(),
            Tile(),
            Tile(),
            Tile(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tile(),
            Tile(),
            Tile(),
            Tile(),
          ],
        ),
      ],
    );
  }
}
