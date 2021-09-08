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
              BoardTileView(boardTilesController.boardTiles[12]),
              BoardTileView(boardTilesController.boardTiles[13]),
              BoardTileView(boardTilesController.boardTiles[14]),
              BoardTileView(boardTilesController.boardTiles[15]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTileView(boardTilesController.boardTiles[8]),
              BoardTileView(boardTilesController.boardTiles[9]),
              BoardTileView(boardTilesController.boardTiles[10]),
              BoardTileView(boardTilesController.boardTiles[11]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTileView(boardTilesController.boardTiles[4]),
              BoardTileView(boardTilesController.boardTiles[5]),
              BoardTileView(boardTilesController.boardTiles[6]),
              BoardTileView(boardTilesController.boardTiles[7]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardTileView(boardTilesController.boardTiles[0]),
              BoardTileView(boardTilesController.boardTiles[1]),
              BoardTileView(boardTilesController.boardTiles[2]),
              BoardTileView(boardTilesController.boardTiles[3]),
            ],
          ),
        ],
      ),
    );
  }
}
