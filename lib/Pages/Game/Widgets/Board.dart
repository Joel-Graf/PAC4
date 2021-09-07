import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardTiles.dart';
import 'package:pac4/Pages/Game/Widgets/Tile/BoardTile.dart';
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
              BoardTile(boardTilesProvider.boardTiles[12]),
              BoardTile(boardTilesProvider.boardTiles[13]),
              BoardTile(boardTilesProvider.boardTiles[14]),
              BoardTile(boardTilesProvider.boardTiles[15]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTile(boardTilesProvider.boardTiles[8]),
              BoardTile(boardTilesProvider.boardTiles[9]),
              BoardTile(boardTilesProvider.boardTiles[10]),
              BoardTile(boardTilesProvider.boardTiles[11]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTile(boardTilesProvider.boardTiles[4]),
              BoardTile(boardTilesProvider.boardTiles[5]),
              BoardTile(boardTilesProvider.boardTiles[6]),
              BoardTile(boardTilesProvider.boardTiles[7]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTile(boardTilesProvider.boardTiles[0]),
              BoardTile(boardTilesProvider.boardTiles[1]),
              BoardTile(boardTilesProvider.boardTiles[2]),
              BoardTile(boardTilesProvider.boardTiles[3]),
            ],
          ),
        ],
      ),
    );
  }
}

class Point {
  int x;
  int y;

  Point(this.x, this.y);

  List<Point> getNeighbours() {
    List<Point> neighbours = [];

    if (_isValidPoint(y + 1)) {
      neighbours.add(Point(x, y + 1));
    }
    if (_isValidPoint(x + 1)) {
      neighbours.add(Point(x + 1, y));
    }
    if (_isValidPoint(y - 1)) {
      neighbours.add(Point(x, y - 1));
    }
    if (_isValidPoint(x - 1)) {
      neighbours.add(Point(x - 1, y));
    }

    return neighbours;
  }

  bool _isValidPoint(int point) {
    return (point >= 0 && point < 4);
  }
}
