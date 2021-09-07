import 'package:flutter/material.dart';
import 'package:pac4/Pages/Game/Providers/BoardController.dart';
import 'package:pac4/Pages/Game/Widgets/Board/BoardTile/BoardTileView.dart';
import 'package:provider/provider.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BoardController>(
      builder: (context, boardTilesController, child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTile(boardTilesController.boardTiles[12]),
              BoardTile(boardTilesController.boardTiles[13]),
              BoardTile(boardTilesController.boardTiles[14]),
              BoardTile(boardTilesController.boardTiles[15]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTile(boardTilesController.boardTiles[8]),
              BoardTile(boardTilesController.boardTiles[9]),
              BoardTile(boardTilesController.boardTiles[10]),
              BoardTile(boardTilesController.boardTiles[11]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTile(boardTilesController.boardTiles[4]),
              BoardTile(boardTilesController.boardTiles[5]),
              BoardTile(boardTilesController.boardTiles[6]),
              BoardTile(boardTilesController.boardTiles[7]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTile(boardTilesController.boardTiles[0]),
              BoardTile(boardTilesController.boardTiles[1]),
              BoardTile(boardTilesController.boardTiles[2]),
              BoardTile(boardTilesController.boardTiles[3]),
            ],
          ),
        ],
      ),
    );
  }
}
