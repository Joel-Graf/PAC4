import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardTiles.dart';
import 'package:provider/provider.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BoardTiles>(
      builder: (context, boardTilesProvider, child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boardTilesProvider.boardTiles[0],
              boardTilesProvider.boardTiles[1],
              boardTilesProvider.boardTiles[2],
              boardTilesProvider.boardTiles[3],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boardTilesProvider.boardTiles[4],
              boardTilesProvider.boardTiles[5],
              boardTilesProvider.boardTiles[6],
              boardTilesProvider.boardTiles[7],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boardTilesProvider.boardTiles[8],
              boardTilesProvider.boardTiles[9],
              boardTilesProvider.boardTiles[10],
              boardTilesProvider.boardTiles[11],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boardTilesProvider.boardTiles[12],
              boardTilesProvider.boardTiles[13],
              boardTilesProvider.boardTiles[14],
              boardTilesProvider.boardTiles[15],
            ],
          ),
        ],
      ),
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
