import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Tile/BoardTile.dart';

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
            BoardTile(Position(0, 0)),
            BoardTile(Position(1, 0)),
            BoardTile(Position(2, 0)),
            BoardTile(Position(3, 0)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoardTile(Position(0, 1)),
            BoardTile(Position(1, 1)),
            BoardTile(Position(2, 1)),
            BoardTile(Position(3, 1)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoardTile(Position(0, 2)),
            BoardTile(Position(1, 2)),
            BoardTile(Position(2, 2)),
            BoardTile(Position(3, 2)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoardTile(Position(0, 3)),
            BoardTile(Position(1, 3)),
            BoardTile(Position(2, 3)),
            BoardTile(Position(3, 3)),
          ],
        ),
      ],
    );
  }
}

class Position {
  int col;
  int row;

  Position(this.col, this.row);

  List<Position> getNeighboursPos() {
    int actualCol = this.col;
    int actualRow = this.row;

    List<Position> neighbours = [];

    if (isValidPosition(actualCol + 1)) {
      neighbours.add(Position(actualCol + 1, actualRow));
    }
    if (isValidPosition(actualCol - 1)) {
      neighbours.add(Position(actualCol - 1, actualRow));
    }
    if (isValidPosition(actualRow + 1)) {
      neighbours.add(Position(actualCol, actualRow + 1));
    }
    if (isValidPosition(actualRow - 1)) {
      neighbours.add(Position(actualRow, actualRow - 1));
    }

    return neighbours;
  }

  bool isValidPosition(int pos) {
    return (pos >= 0 && pos < 4);
  }
}
